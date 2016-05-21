package main

import (
	"archive/zip"
	"fmt"
	"io"
	"io/ioutil"
	"log"
	"net/http"
	"os"
	"path/filepath"
	"sort"
	"strconv"
	"strings"
	"sync"
	"text/template"

	"github.com/PuerkitoBio/goquery"
	"github.com/pelletier/go-toml"
)

var config struct {
	concurrencyLimit int64
	vimDirs          []string
	tmpDir           string
	maxSchemes       int64
	urls             struct {
		vimOrg    string
		vimSearch string
	}
}

// ColorScheme object
type ColorScheme struct {
	Name           string
	downloadURL    string
	description    string
	DescriptionURL string
	filetype       string
}

func init() {
	tomlConfig, err := toml.LoadFile("config.toml")
	if err != nil {
		log.Fatal(err)
	}

	config.concurrencyLimit = tomlConfig.GetDefault("config.concurrencyLimit", 4).(int64)
	config.maxSchemes = tomlConfig.GetDefault("config.maxSchemes", 1000).(int64)

	config.tmpDir = "tmp"
	config.vimDirs = []string{"colors"}
	for _, dir := range append(config.vimDirs, config.tmpDir) {
		err = createDir(dir)
		if err != nil {
			log.Fatal(err)
		}
	}
	config.urls.vimOrg = "http://www.vim.org"
	config.urls.vimSearch = fmt.Sprintf(
		"%s/scripts/script_search_results.php?&script_type=color%%20scheme&show_me=%d", config.urls.vimOrg, config.maxSchemes)
}

func collectVimOrg() []string {
	fmt.Println("Fetch colorschmes urls from vim.org...")
	doc, err := goquery.NewDocument(config.urls.vimSearch)
	if err != nil {
		log.Fatal(err)
	}
	linksMap := make(map[string]bool)
	var links []string
	doc.Find("td").Each(func(i int, s *goquery.Selection) {
		s.Find("a").Each(func(i int, s *goquery.Selection) {
			href, exists := s.Attr("href")
			if exists {
				if strings.Index(href, "script.php?script_id=") == 0 {
					if !linksMap[href] {
						linksMap[href] = true
						links = append(links, href)
					}
				}
			}
		})
	})
	fmt.Printf("Found %d colorschemes\n", len(links))
	return links
}

func vimOrgScheme(url string) *ColorScheme {
	url = fmt.Sprintf("%s/%s", config.urls.vimOrg, url)
	doc, err := goquery.NewDocument(url)
	if err != nil {
		log.Fatal(err)
	}
	var desc string
	doc.Find(".txth1").Each(func(i int, s *goquery.Selection) {
		if i == 0 {
			desc = s.Text()
		}
	})
	descSplit := strings.SplitN(desc, ":", 2)
	if len(descSplit) == 2 {
		desc = strings.TrimSpace(descSplit[1])
	}
	cs := new(ColorScheme)
	cs.DescriptionURL = url

	doc.Find("td").Each(func(i int, s *goquery.Selection) {
		if cs.downloadURL != "" {
			return
		}
		s.Find("a").Each(func(i int, s *goquery.Selection) {
			if cs.downloadURL != "" {
				return
			}
			href, exists := s.Attr("href")
			if exists {
				if strings.Index(href, "download_script.php?src_id=") == 0 {
					cs.downloadURL = fmt.Sprintf("%s/scripts/%s", config.urls.vimOrg, href)
					cs.Name = s.Text()
					cs.description = desc
				}
			}
		})
	})
	cs.filetype = filepath.Ext(cs.Name)
	return cs
}

func downloadScheme(cs *ColorScheme) error {
	fmt.Println("Downloading colorscheme", cs.Name)
	body, err := downloadFile(cs.downloadURL)
	if err != nil {
		return err
	}
	fileName := filepath.Join("colors", cs.Name)
	return writeFile(fileName, body)
}

func downloadZip(cs *ColorScheme) error {
	fmt.Println("Downloading zip and extract colorschemes", cs.Name)
	body, err := downloadFile(cs.downloadURL)
	if err != nil {
		return err
	}
	fileName := filepath.Join(config.tmpDir, cs.Name)
	err = writeFile(fileName, body)
	if err != nil {
		return err
	}
	r, err := zip.OpenReader(fileName)
	if err != nil {
		fmt.Println("Error while extracting", cs.Name)
		return err
	}
	defer r.Close()
	for _, f := range r.File {
		if strings.HasSuffix(f.Name, ".vim") {
			rc, openErr := f.Open()
			if openErr != nil {
				fmt.Println("Error while extracting", f.Name)
				continue
			}
			fmt.Println("Extract", f.Name)
			dir, file := filepath.Split(f.Name)
			if dir != "" {
				dirs := strings.Split(dir[:len(dir)-1], string(filepath.Separator))
				dirsLen := len(dirs)
				i := sort.SearchStrings(config.vimDirs, dirs[dirsLen-1])
				if i < len(config.vimDirs) {
					file = filepath.Join(dirs[dirsLen-1], file)
				} else {
					file = ""
				}
			} else {
				file = filepath.Join("colors", file)
			}
			if file != "" {
				writeFile(file, rc)
			}
		}
	}
	r.Close()
	err = os.Remove(fileName)
	if err != nil {
		fmt.Println("Error while delete", fileName)
		return err
	}
	return nil
}

func downloadFile(url string) (io.Reader, error) {
	resp, err := http.Get(url)
	if err != nil {
		fmt.Println("Error while downloading", url, "-", err)
		return nil, err
	}
	return resp.Body, nil
}

func writeFile(fileName string, src io.Reader) error {
	file, err := os.Create(fileName)
	if err != nil {
		fmt.Println("Error while creating", fileName, "-", err)
		return err
	}
	defer file.Close()

	_, err = io.Copy(file, src)
	if err != nil {
		fmt.Println("Error while write", fileName, "-", err)
		return err
	}
	return nil
}

func createDir(dirName string) error {
	_, err := os.Stat(dirName)
	if os.IsNotExist(err) {
		err = os.MkdirAll(dirName, 0755)
		return err
	}
	return nil
}

func getGitHub(url string) ([]*ColorScheme, error) {
	var colorSchemes []*ColorScheme
	doc, err := goquery.NewDocument(url)
	if err != nil {
		return colorSchemes, err
	}
	doc.Find("a.js-navigation-open").Each(func(i int, s *goquery.Selection) {
		if strings.HasSuffix(s.Text(), ".vim") {
			href, exists := s.Attr("href")
			if exists {
				cs := new(ColorScheme)
				blobIndex := strings.LastIndex(href, "/blob")
				cs.downloadURL = "https://raw.githubusercontent.com" + href[:blobIndex] + href[blobIndex+len("/blob"):]
				cs.Name = s.Text()
				cs.DescriptionURL = url
				colorSchemes = append(colorSchemes, cs)
			}
		}
	})
	return colorSchemes, nil
}

func main() {
	defer os.RemoveAll(config.tmpDir)
	fmt.Println("Welcome to vim-pallete")
	files, err := ioutil.ReadDir("colors")
	if err != nil {
		log.Fatal(err)
	}
	if len(files) == 0 {
		fmt.Println("Local colorschemes not found")
	} else {
		fmt.Printf("Found %d local colorschemes\n", len(files))
	}

	links := collectVimOrg()
	schemesMap := make(map[int]*ColorScheme)
	archivesMap := make(map[int]*ColorScheme)
	fmt.Println("Collect download links")
	var throttle = make(chan int, config.concurrencyLimit)
	var wg sync.WaitGroup
	wg.Add(len(links))
	for _, link := range links {
		throttle <- 1
		go func(link string) {
			defer func() {
				<-throttle
				wg.Done()
			}()
			cs := vimOrgScheme(link)
			if cs.downloadURL == "" {
				fmt.Printf("Color scheme not found (%s)\n", cs.DescriptionURL)
				return
			}
			index := strings.LastIndex(cs.downloadURL, "=")
			if index == -1 {
				return
			}
			id, err := strconv.Atoi(cs.downloadURL[index+1:])
			if err != nil {
				return
			}
			switch cs.filetype {
			case ".vim":
				schemesMap[id] = cs
			case ".zip":
				archivesMap[id] = cs
			}
			fmt.Printf("Found %s (%s)\n", cs.Name, cs.downloadURL)
		}(link)
	}
	wg.Wait()

	var keys []int
	for key := range archivesMap {
		keys = append(keys, key)
	}
	sort.Ints(keys)

	for _, key := range keys {
		downloadZip(archivesMap[key])
	}

	keys = keys[:0]
	for key := range schemesMap {
		keys = append(keys, key)
	}
	sort.Ints(keys)

	for _, key := range keys {
		throttle <- 1
		wg.Add(1)
		go func(cs *ColorScheme) {
			defer wg.Done()
			downloadScheme(cs)
			<-throttle
		}(schemesMap[key])
	}
	wg.Wait()

	config, err := toml.LoadFile("config.toml")
	if err != nil {
		log.Fatal(err)
	}
	githubColors := config.Get("github.colors").([]interface{})
	var schemesGitHub []*ColorScheme
	for _, schemeURL := range githubColors {
		schemes, err := getGitHub(schemeURL.(string))
		if err == nil {
			schemesGitHub = append(schemesGitHub, schemes...)
		}
	}

	for _, cs := range schemesGitHub {
		throttle <- 1
		wg.Add(1)
		go func(cs *ColorScheme) {
			defer wg.Done()
			downloadScheme(cs)
			<-throttle
		}(cs)
	}
	wg.Wait()

	allSchemesTmp := make(map[string]*ColorScheme)
	for _, scheme := range archivesMap {
		allSchemesTmp[scheme.Name] = scheme
	}

	for _, scheme := range schemesMap {
		allSchemesTmp[scheme.Name] = scheme
	}

	for _, scheme := range schemesGitHub {
		allSchemesTmp[scheme.Name] = scheme
	}

	var names []string
	for name := range allSchemesTmp {
		names = append(names, name)
	}
	sort.Strings(names)

	var allSchemes []*ColorScheme
	for _, name := range names {
		allSchemes = append(allSchemes, allSchemesTmp[name])
	}

	readmeTmpl, err := template.ParseFiles("README.tmpl")
	if err != nil {
		log.Fatal(err)
	}
	readmeFile, err := os.Create("README.md")
	if err != nil {
		log.Fatal(err)
	}
	readmeTmpl.Execute(readmeFile, allSchemes)
	readmeFile.Close()
}

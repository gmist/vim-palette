syntax keyword known_typo ablasion abscss accenteric adenoapthy adeomyosis ampular antroinferior appendicial arrythmia atelecatasis athermas atheromatic atropic augumentation augumented bengin bification brakage breaast bulae bulectomy bulous cartilageous carvernous chagnes chanegs changesprevious chnages cholonoscope ciccatrization clinially clusterd coargulation condision corticomedulary cryptoorchidism debriment debriments definte degee delniation demosntrable desity dilatated dilineation diverticulutis dominent doubleprimary echogenecity encreased enhanceing entrocolitis eosinophile esophgus exophyting fascitis ffatty fuction ganlion gasric gasritis gastectomy grdae hemathrosis hemisphre hemorrage hemorragic heria hernated hernation heterogenous histerectomy ilenocecitis inflmmatory ingulfing interhemishpheric intermittant lenth lopoma lymphcele manuver meidal mesentry msenteric msentery mulitfocal mulscle multfocal multisepatated multple muslcle nausia nodues opacipication opthalmic pancrea papiloma papilomas parigastric paripancreatic pelivs periananl periappendicial periarotic pericardiac periperal peritonii peritonsilar perivertebral perostatitis persistant portahepatis portiono possiblity postrolateral postrosuperior pperibronchial prematured probalbe prvious radioopaque retension retomammary sagital scaned serpigenous sgmentectomy simpley sinuss sizecd sphinteric spongeform suspcious tbrculosis thrombophlevitis thyrodopathy thyrpodectomy tonsilitis trombus tumerectomy ubtle unchanges uncompressable veous greatercurvature laparosopic supcapsular viginal lungitis
highlight known_typo ctermbg=red guibg=red ctermfg=white ctermfg=white gui=none 

syntax match loc_term "\<\(poster\|anter\)\(ior\|omedial\|olateral\|osuperior\|oinferior\)\>"
syntax match loc_term "\(super\|infer\)\(ior\|omedial\|olateral\)\|medial\|lateral\|periphe[a-z]*\|\(meta\|epi\)physis"
syntax match loc_term "\<\(\|sub\)segment\(\|s\|al\)\>\|\<lob\(e\|es\|ar\)\>\|\<\(aorto\|porto\)caval\>"
syntax keyword loc_term upper lower proximal distal apical middle body fundus antrum shaft periaortic paraaortic
syntax keyword loc_term both right left central sigmoid ascending descending transverse
highlight loc_term ctermbg=black guibg=black ctermfg=green guifg=green term=bold

syntax keyword simil_term several severe definite defined chest check  
highlight simil_term ctermbg=grey guibg=grey ctermfg=red guifg=red gui=none 

syntax match organ_term "\(white\|grey\) matter\|\(I-C\|C-P\) \(valve\|angle\)\|basal ganglia" 
syntax match organ_term "\<duct\(\|s\|al\)\>\|\<disc\(\|s\|al\)\>\|\<arter\(y\|ial\|ies\)\>"
syntax match organ_term "\<ovar\(y\|ies\|ian\)\>\|\<\(\|peri\)bronch\(us\|ial\|ogenic\)\>"
syntax keyword organ_term liver pancreas kidney kidneys femur humerus radius ulnar bowel colon stomach spleen pelvic pelvis tibia fibula talus calcaneus lymphnode lymphnodes mesentery mesenteric thyroid isthmus lung peritoneal thigh neck brain cerebral cerebellum hepatic bladder urinary portal cecum cerebellar cervix cervical appendix appendiceal vein venous aorta aortic periventricular paravertebral  maxillary maxilla muscle adnexa adnexal renal supraspinatus subscapularis tendon ligament vastus intermedius lateralis medialis abdominal abdomen abdominis abductor pleural ileum jejunum jejunal ileal
highlight organ_term ctermbg=black guibg=black ctermfg=lightred guifg=lightred term=none

syntax match proc_term '[a-z]*tomy\|[a-z]*scop[a-z]\{1,2\}'
syntax keyword proc_term LAR PCNA PCN MRM GFS miles injection ablation biopsy anastomosis
highlight proc_term ctermbg=black guibg=black ctermfg=white guifg=white term=bold

syntax match path_term '\<[0-9\.]*\(x[0-9\.]*\)*[cCm]m\>\|\<[a-z]*cyst[a-z]\{0,2\}\>' 
syntax match path_term '[a-z]*calcifi[a-z]*\|[a-z]*nodul[a-z]*\|[a-z]*perfor[a-z]*\|[a-z]*pathy\|[a-z]*sis\>'
syntax keyword path_term appendicolith fatty infiltration wall thickening mass bullae bullous atelectasis fracture
syntax keyword path_term foreign fluid collection abscess stone stones injury consolidation heterogeneous
syntax keyword path_term leukoaraiosis effusion ileus lesion lesions dilatation dilation dilated homogeneous
highlight path_term ctermbg=black guibg=black ctermfg=yellow guifg=yellow gui=none

syntax match disease '[a-z]*itis\|[a-z]*oma\|\<\(pneumo\|hemo\)\(thorax\|peritoneum\)\>'
syntax keyword disease BPH cancer 
highlight disease ctermbg=black guibg=black ctermfg=yellow guifg=yellow gui=bold

syntax keyword etc_term suspicious possible probable compatible previous improvement clinical clinically otherwise 
syntax keyword etc_term correlation sized abnormal abnormality vivid interval changes change changed unremarkable
syntax keyword etc_term marked portion minimal evaluation below structure findings patchy evidence
highlight etc_term ctermbg=black guibg=black ctermfg=grey guifg=grey gui=none

syntax match abbr "\<[a-z]*echo[a-z]*\>\|\<[a-z]*dens[a-z]*\>\|\<radio[a-z]*\>\|-->\|rec\.\|[RSF]/[OPU]\|DDx"
syntax keyword abbr LUL LLL RUL RML RLL LULF LLLF LMLF RULF RMLF RLLF LUQ LLQ RLQ RUQ BULF BUL BMLF BLL BLLF CBD IHD GB
syntax keyword abbr HD UA USG CT MR NECT CECT TFT LFT  
highlight abbr ctermbg=black guibg=black ctermfg=white guifg=white gui=none




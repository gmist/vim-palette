#!/bin/sh

npm install
export PATH=./node_modules/.bin:$PATH
casperjs grab.coffee

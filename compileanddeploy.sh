#!/bin/bash
source config.sh

#Build site
#jekyll build --baseurl ""

#Upload to ftp site
ncftpput -R -v -u $FTP_USER -p $FTP_PASS $FTP_SERVER $WEBSITE_PATH ./_site/*

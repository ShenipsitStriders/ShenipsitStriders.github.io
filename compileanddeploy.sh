#!/bin/bash
source config.sh

SCRATCH=$(mktemp -d)

#Build site
jekyll build --config "_config.yml,prodconfig.yml" -d $SCRATCH
#ensure build succeeded

#Upload to ftp site
ncftpput -R -v -u $FTP_USER -p $FTP_PASS $FTP_SERVER $WEBSITE_PATH $SCRATCH/*

rm -rf $SCRATCH

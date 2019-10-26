#!/bin/bash


##specify all local repositories in a single variable

MY_REPOS=”base centosplus extras updates epel”


##a loop to update repos one at a time 

for REPO in $MY_REPOS; do

reposync -g -l -d -m --repoid=$REPO --newest-only --download-metadata --download_path=/var/www/html/repos/

createrepo -g comps.xml /var/www/html/repos/$REPO/  

done

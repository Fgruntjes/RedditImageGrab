#!/usr/bin/env bash

DIR="/home/fgruntjes/Pictures/RedditWallpapers"

/var/www/RedditImageGrab/redditdownload.py -sfw -score 50 EarthPorn $DIR -regex '.*' -num 50
find $DIR/* -mtime +7 -exec rm {} \;


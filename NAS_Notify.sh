#!/bin/sh

# Script to use curl to notify  a new episode of No Agenda Show

#NA_rss="~/Development/NAS/rss.xml"
#NA_New="~/Development/NAS/New_rss.xml"

curl "https://feeds.noagendaassets.com/noagenda.xml" -o ~/Development/NAS/New_rss.xml

cd /Users/mikewhite/Development/NAS || exit 0

for RSS in rss.xml New_rss.xml; do 
   diff -q $RSS $RSS && terminal-notifier -title 'No Agenda' -message 'New Episode Available' -open 'https://www.noagendashow.net/podcast'
   echo "No New Episode."
  exit 1
done

exit

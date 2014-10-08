#!/bin/bash
#===Dependencies:===
# * Node.js
# * npm
#   * cheerio
if [ $# -eq 0  ]
then
  echo "Usage: $0 <MozTrap URL>"
  exit
fi

moztrapurl="$1&pagesize=2000"

#wget --no-check-certificate $moztrapurl -O tmp.html
rm tmp.html
curl -k -o tmp.html $moztrapurl 
node moztrap2csv.js #hardcoded to parse tmp.html

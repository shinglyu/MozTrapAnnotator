search (){
  term=$1
  grep "<input.*$term.*class=\"comment\"" cctrl_cases_comments.html |tee /dev/tty | wc -l
}

searchSummary (){
  term=$1
  echo -ne "$term:\t"
  if [ ${#term} -le 3 ]; #indent more if search string too short
  then
    echo -ne "\t"
  fi 
  grep "<input.*$term.*class=\"comment\"" cctrl_cases_comments.html | wc -l
}
search 'INVALID'
search '?'
search 'Duplicate'

echo ===summary===
searchSummary 'INVALID'
searchSummary '?'
searchSummary 'Duplicate'
searchSummary ''






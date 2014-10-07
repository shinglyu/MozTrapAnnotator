#Open firefox console, run $('.summary.item-summary').click(), then save the file
sed -i '/<div class="modified">.*<\/div>/ a\ <div><input type="text" class="comment"><\/div>' $1
##sed -i '/<style>/ a\ input[type="text"]{box-shadow: 0px 0px 5px #FF0000 ! important;}' $1
sed -i '/<style>/ a\ input.comment{box-shadow: 0px 0px 5px #FF0000 ! important;}' $1

cssfile=$(grep -oP 'href="\K.*\/.*\.css' cctrl_cases_comments.html)
echo "<style>" >> $1
cat $cssfile >> $1
echo "</style>" >> $1
#sed -i "/href=.*.css/ a\\ $(cat $cssfile)" $1

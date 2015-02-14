site=$1
date=`date +"%Y%m%d%H%M%S"`
filename="selenium_remove_from_google_"$date".xml"

cat remove_from_google_index_template_head.xml > $filename

cat to_remove.txt | while read line
do
  echo $line
  cat remove_from_google_index_template_row.xml | sed  "s|URL_TO_REMOVE|$line|" | sed "s|SITE_URL|$site|" >> $filename
done

cat remove_from_google_index_template_tail.xml >> $filename

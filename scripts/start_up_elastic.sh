declare -A array

array["elasticsearch-5.6.3"]=" ../binaries/elasticsearch-5.6.3/bin/elasticsearch.bat"

file='file_'`date +%Y-%m-%d`'.log'

for i in "${!array[@]}"
do

echo "Starting the service ..." $i

echo ${array[$i]} 

${array[$i]} >> ../logs/$i'_'$file
 
done

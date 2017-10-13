
declare -A array

array["logstash-5.5.0"]="../binaries/logstash-5.5.0/bin/logstash.bat -f ../config/logstash.conf"

file='file_'`date +%Y-%m-%d`'.log'

for i in "${!array[@]}"
do

echo "Starting the service ..." $i

echo ${array[$i]} 

${array[$i]} >> ../logs/$i'_'$file
 
done

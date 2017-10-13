
declare -A array

array["elasticsearch-5.6.3.zip"]="https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.3.zip"
array["logstash-5.5.0.zip"]="https://artifacts.elastic.co/downloads/logstash/logstash-5.5.0.zip"
array["kibana-5.6.3-windows-x86.zip"]="https://artifacts.elastic.co/downloads/kibana/kibana-5.6.3-windows-x86.zip"



for i in "${!array[@]}"
do
  echo "downloading......  : $i"
  curl -o ../binaries/$i ${array[$i]}
  echo " ...........unzipping......... " $i
  unzip ../binaries/$i -d ../binaries 	 	
  echo "................................"
  echo "............ deleting the zip file .........." $i
  rm -rf  ../binaries/$i
  echo "................................................" 
done




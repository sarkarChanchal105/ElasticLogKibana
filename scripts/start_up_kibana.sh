declare -A array

array["kibana-5.6.3-windows-x86"]="../binaries/kibana-5.6.3-windows-x86/bin/kibana.bat"


file='file_'`date +%Y-%m-%d`'.log'

for i in "${!array[@]}"
do

echo "Starting the service ..." $i

echo ${array[$i]} 

${array[$i]} >> ../logs/$i'_'$file
 
done

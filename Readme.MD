# How to spinup a singlenode ElasticSearch LogStash Kibana (ELK) cluster in Windows

## Step 1: Download and install Git Bash for Windows.
		You may use this link : https://git-for-windows.github.io/

## Step 2: Create the following folders under "ElasticLogKibana"
		
		a) binaries
		b) config
		c) logs
		d) files 		

## Step 3: Open four Git Bash windows. In Git Bash window, Navigate to the "scripts" folder and execute the following commands.

		b) sh download_elk.sh  ##Download the binaries.
		b) sh start_up_elastic.sh  ##Run in bash windows one.Starts elasticsearch on the default port number
		c) sh start_up_kibana.sh   ##Run in bash windows two.Starts the kibana service on the default port number
		d) sh start_up_logstash.sh ##Run in bash windows three.Start the logstash. 
		   Please initialze the variable export source_file="<path to log files>\*.log" before running logstash



## Step 4: Navigate to the "scripts" folder and execute log data generator (Optional)
		sh generate_logs.sh  ##logs should be genertaed under "files"


## Step 5: Open Kibana to check the data
		http://localhost:5601

## Step 6: Check ElasticSearch cluster
		http://localhost:9200
		http://localhost:9200/_cat
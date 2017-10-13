# How to spinup a singlenode ELK cluster in Windows

## Step 1: Download and install Git Bash for Windows.
		You may use this link : https://git-for-windows.github.io/

## Step 2: Create the following folders under "ElasticLogKibana"
		
		a) binaries
		b) config
		c) logs 		

## Step 2: Open Three Git Bash windows. In Git Bash window, Navigate to the "scripts" folder and execute the following commands.

		a) sh start_up_elastic.sh  ##Starts elasticsearch on the default port number
		b) sh start_up_kibana.sh   ##Starts the kibana service on the default port number
		c) sh start_up_logstash.sh ## Start the logstash. 
		   Please initialze the variable export source_file="<path to log files>\*.log" before running logstash



## Step 3: Navigate to the "scripts" folder and execute log data generator (Optional)
		sh generate_logs.sh  ##logs should be genertaed under "files"


## Step 4: Open Kibana to check the data
		http://localhost:5601


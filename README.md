# aws-challenge

Service	          Purpose	                                        Source/Target
Kinesis Streams	  To collect Temperature data	Digital             Thermometer Device
Kinesis Firehose	To send data from streams to S3/Redshift	      Kinesis Streams
Redshift	 	 
Dynamo DB	        To ingest thermometer data ----- NOT NEEDED	 
IoT Core	        To ingest thermometer data	 
Quicksight	      Reporting	 
Neptune Graph DB	Relationships/Networking
Kinesis Analytics	To query real-time data	 
RDS MySQL	        To host employee data	 
SNS	              To send notifications from Kinesis Analytics based on temperature spike.	Kinesis Analytics
Cloudwatch	 	 
DMS	              To perform CDC from DB sources	 
Sagemaker	 	 
Lambda	 	 
 	 	 

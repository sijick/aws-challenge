import json
import boto3
import time
import datetime
import sys
from io import StringIO
import random

def lambda_handler(event, context):
    # TODO implement
    
    session = boto3.Session(region_name="us-east-1")
    kinesis = boto3.client('kinesis',region_name='us-east-1')
    sns_client = session.client('sns')
    code = json.dumps(event['insert'])
    json_data=json.loads(code)
    
    
    message = "Employee : "+ str(json_data["Empid"])+ " has temperature : " + str(json_data["Temp"])
    print(message)
    temperature = json_data["Temp"]
    if(temperature>=100):
        
        response_sms = sns_client.publish(TargetArn = "arn:aws:sns:us-east-1:277267567909:High_Temp_aLERT",Message = message )
        response_email = sns_client.publish(TargetArn = "arn:aws:sns:us-east-1:277267567909:Api_temp",Message = message )
        print("response_sms is :", response_sms)
    json_data['timestamp'] = datetime.datetime.fromtimestamp(time.time()).strftime('%Y-%m-%d %H:%M:%S')
    print(json_data)
   
    part_key ='PartitionKey' + str(random.randint(0, 100))
    kinesis.put_record(StreamName="emp-temperature", Data = json.dumps(json_data), PartitionKey = part_key)
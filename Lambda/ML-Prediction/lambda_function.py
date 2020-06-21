import os
import io
import boto3
import json
import csv
import time
from time import gmtime,strftime,sleep
# grab environment variables
ENDPOINT_NAME = os.environ['ENDPOINT_NAME']
runtime= boto3.client('runtime.sagemaker')
sgmkr= boto3.client('sagemaker')
def lambda_handler(event, context):
    print("Received event: " + json.dumps(event, indent=2))
    
    data = json.loads(json.dumps(event))
    payload = data['data']
    print(payload)
    if payload == 'batch':
        batch_job_name = '1ws-senti-batch-' + strftime("%Y-%m-%d-%H-%M-%S", gmtime())
        batch_input = 's3://{}/{}/{}'.format('1worldspirit', 'ML', '1ws-pred.csv')
        batch_output = 's3://{}/{}/{}'.format('1worldspirit', 'ML', '1ws-pred-out')

        request = \
                    {
                     "TransformJobName": batch_job_name,
                     "ModelName": '1ws-Sentiment-model-1592374390938',
                     "BatchStrategy": "MultiRecord",
                     "TransformOutput": {
                     "S3OutputPath": batch_output
                     },
                     "TransformInput": {
                     "DataSource": {
                     "S3DataSource": {
                     "S3DataType": "S3Prefix",
                     "S3Uri": batch_input
                     }
                     },
                     "ContentType": "text/csv",
                     "SplitType": "Line",
                     "CompressionType": "None"
                     },
                     "TransformResources": {
                     "InstanceType": "ml.m4.xlarge",
                     "InstanceCount": 1
                     }
                    }
        sgmkr.create_transform_job(**request)
        predicted_label = 'Batch Job Submitted'
    else :
        response = runtime.invoke_endpoint(EndpointName=ENDPOINT_NAME,
                                           ContentType='text/csv',
                                           Body=payload)
        print('res is !!!!')
        print(response)
        result = json.loads(response['Body'].read().decode())
        print('result is!!!!')
        print(result)
        #pred = int(result['predictions'][0]['score'])
        #pred = int(result['predictions'][0])
        predicted_label = 'Satisfied' if result == 1 else 'Not Satisfied'
    
    return predicted_label
import json
import boto3
import time
import datetime
import sys
import random
import neo4j
from neo4j import GraphDatabase






def lambda_handler(event, context):

    # TODO implement
    try:
    
        session = boto3.Session(region_name="us-east-1")
        kinesis = boto3.client('kinesis',region_name='us-east-1')
        sns_client = session.client('sns')
        neoc=GraphDatabase.driver("neo4j://3.91.201.76:7687", auth=("neo4j", "Capgemini$123"))
        neosession = neoc.session()
        
        #connection = neo4j.connect("http://3.91.201.76:7474",username="neo4j", password="Capgemini$123")
        #cursor = neoc.cursor()
        s3 = boto3.resource("s3")
        
        
        
        code = json.dumps(event['insert'])
        json_data=json.loads(code)
        
        
        message = "Employee : "+ str(json_data["Empid"])+ " has temperature : " + str(json_data["Temp"])
        employee = json_data["Empid"]
        json_data['timestamp'] = datetime.datetime.fromtimestamp(time.time()).strftime('%Y-%m-%d %H:%M:%S')
        file_name = "neo4jresult"+str(json_data['timestamp'])+".txt"
        obj = s3.Object('1worldspirit','data-lake/neo4j/'+str(file_name))
        print(message)
        temperature = json_data["Temp"]
        
        neo_list=""
        if(temperature>=100):
            
            response_sms = sns_client.publish(TargetArn = "arn:aws:sns:us-east-1:277267567909:High_Temp_aLERT",Message = message )
            response_email = sns_client.publish(TargetArn = "arn:aws:sns:us-east-1:277267567909:Api_temp",Message = message )
            
            neo4j_query_update = "MATCH (n:Employee{ empId:"+str(employee)+"}) SET n.isSypotmatic=True, n:Sympotmatic return n"
            neo4j_query_select = "Match (n:Employee{ empId: "+str(employee)+" })-[r:Close_By]->(e:Employee) where r.Close_By_Date>date('2020-06-11') And r.Close_By_Date<date('2020-06-30')  return n.empId,n.isSypotmatic,n.appInstallDate,r.Close_By_Date,e.empId,e.isSypotmatic,e.appInstallDate"
            neosession.run(neo4j_query_update)
            for name in neosession.run(neo4j_query_select):
                #record = str(name["n.empId"])+","+str(name["n.isSypotmatic"])+","+str(name["n.appInstallDate"])+","+str(name["r.Close_By_Date"])+","+str(name["e.empId"])+","+str(name["e.isSypotmatic"])+","+str(name["e.appInstallDate"])
                neo_list+=str(name["n.empId"])+","+str(name["n.isSypotmatic"])+","+str(name["n.appInstallDate"])+","+str(name["r.Close_By_Date"])+","+str(name["e.empId"])+","+str(name["e.isSypotmatic"])+","+str(name["e.appInstallDate"])
                neo_list+='\n'
            print("neo list is : ",neo_list)
            obj.put(Body=str(neo_list))
            
            print("response_sms is :", response_sms)
        
        print(json_data)
       
        part_key ='PartitionKey' + str(random.randint(0, 100))
        kinesis.put_record(StreamName="emp-temperature", Data = json.dumps(json_data), PartitionKey = part_key)
        
        
        return "success"
    except Exception as e:
            print(str(e))
            return "failed"
    
        
            
    
    
    
    

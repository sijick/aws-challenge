CREATE EXTERNAL TABLE `ows_cubicle`(
  `row_id` string, 
  `floor` bigint, 
  `zone` string, 
  `people` bigint)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://1worldspirit/ows-athena-quicksight/cubicle/'
TBLPROPERTIES (
  'CrawlerSchemaDeserializerVersion'='1.0', 
  'CrawlerSchemaSerializerVersion'='1.0', 
  'UPDATED_BY_CRAWLER'='cubicle', 
  'areColumnsQuoted'='false', 
  'averageRecordSize'='15', 
  'classification'='csv', 
  'columnsOrdered'='true', 
  'compressionType'='none', 
  'delimiter'=',', 
  'objectCount'='1', 
  'recordCount'='15', 
  'sizeKey'='230', 
  'skip.header.line.count'='1', 
  'typeOfData'='file')
  
  -----------------------------------------------------------------
  
  CREATE EXTERNAL TABLE `ows_canteen`(
  `time` string, 
  `capacity` bigint, 
  `utilization` bigint)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://1worldspirit/ows-athena-quicksight/canteen/'
TBLPROPERTIES (
  'CrawlerSchemaDeserializerVersion'='1.0', 
  'CrawlerSchemaSerializerVersion'='1.0', 
  'UPDATED_BY_CRAWLER'='canteenows', 
  'areColumnsQuoted'='false', 
  'averageRecordSize'='26', 
  'classification'='csv', 
  'columnsOrdered'='true', 
  'compressionType'='none', 
  'delimiter'=',', 
  'objectCount'='1', 
  'recordCount'='4', 
  'sizeKey'='115', 
  'skip.header.line.count'='1', 
  'typeOfData'='file')
  
  ----------------------------------------------------------------------
  
  CREATE EXTERNAL TABLE `ows_employee`(
  `employee` string, 
  `floor` bigint, 
  `zone` string, 
  `satisfacton - actual` bigint, 
  `infection- prediction` bigint, 
  `infection - actual` bigint, 
  `infection - prediction` bigint)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://1worldspirit/ows-athena-quicksight/employee/'
TBLPROPERTIES (
  'CrawlerSchemaDeserializerVersion'='1.0', 
  'CrawlerSchemaSerializerVersion'='1.0', 
  'UPDATED_BY_CRAWLER'='employee', 
  'areColumnsQuoted'='false', 
  'averageRecordSize'='43', 
  'classification'='csv', 
  'columnsOrdered'='true', 
  'compressionType'='none', 
  'delimiter'=',', 
  'objectCount'='1', 
  'recordCount'='79', 
  'sizeKey'='3398', 
  'skip.header.line.count'='1', 
  'typeOfData'='file')
  
  ----------------------------------------------------------------------
  
  CREATE EXTERNAL TABLE `ows_lift`(
  `time` string, 
  `l1` bigint, 
  `l2` bigint, 
  `l3` bigint, 
  `l4` bigint, 
  `l1-lift` double, 
  `l2-lift` bigint, 
  `l3-lift` double, 
  `l4-lift` double)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://1worldspirit/ows-athena-quicksight/lift/'
TBLPROPERTIES (
  'CrawlerSchemaDeserializerVersion'='1.0', 
  'CrawlerSchemaSerializerVersion'='1.0', 
  'UPDATED_BY_CRAWLER'='liftows', 
  'areColumnsQuoted'='false', 
  'averageRecordSize'='40', 
  'classification'='csv', 
  'columnsOrdered'='true', 
  'compressionType'='none', 
  'delimiter'=',', 
  'objectCount'='1', 
  'recordCount'='6', 
  'sizeKey'='240', 
  'skip.header.line.count'='1', 
  'typeOfData'='file')
  
  --------------------------------------------------------------------------------
  
  CREATE EXTERNAL TABLE `ows_parking`(
  `zone` string, 
  `total capacity` bigint, 
  `parking utilization` bigint)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://1worldspirit/ows-athena-quicksight/parking/'
TBLPROPERTIES (
  'CrawlerSchemaDeserializerVersion'='1.0', 
  'CrawlerSchemaSerializerVersion'='1.0', 
  'UPDATED_BY_CRAWLER'='parking', 
  'areColumnsQuoted'='false', 
  'averageRecordSize'='19', 
  'classification'='csv', 
  'columnsOrdered'='true', 
  'compressionType'='none', 
  'delimiter'=',', 
  'objectCount'='1', 
  'recordCount'='3', 
  'sizeKey'='74', 
  'skip.header.line.count'='1', 
  'typeOfData'='file')
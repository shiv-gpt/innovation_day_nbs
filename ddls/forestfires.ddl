CREATE EXTERNAL TABLE IF NOT EXISTS
forestfires.data (
  X string,
  Y string,
  month string,
  day string,
  FFMC string,
  DMC string,
  DC string,
  ISI string,
  temp string,
  RH string,
  wind string,
  rain string,
  area string,
) ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  'separatorChar' = ',',
  'quoteChar' = '\"',
  'escapeChar' = '\\'
)
STORED AS TEXTFILE
LOCATION 's3://innovationday-test-bucket/forestfires.csv';

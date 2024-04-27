CREATE TABLE iceberg_dataplatform.staff_data (
  student_id string,
  first_name string,
  last_name string,
  date_of_birth string,
  load_date date)
PARTITIONED BY (MONTH(load_date))
  
LOCATION 's3://iiceberg-table-location/table_data/staff_data'
TBLPROPERTIES (
  'table_type'='iceberg'
);
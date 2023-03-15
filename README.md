# dbt duckdb s3 demo

This project demonstrates how to work with external materializations for dbt-duckdb using a localstack S3 implementation.

## How to run

1) Start up docker compose:

`docker compose up`

2) Attach to container:

`docker exec -it s3-demo-dbt-duckdb-1 /bin/bash`

3) Setup the S3 bucket

`awsv2 s3 mb s3://datawarehouse --endpoint-url http://localstack:4566`

4) Run dbt

`dbt run`

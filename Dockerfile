FROM python:3.11

WORKDIR project

RUN pip install duckdb==0.7.1 s3fs awscliv2
RUN pip install git+https://github.com/jwills/dbt-duckdb

RUN awsv2 --install
RUN awsv2 --configure default key secret

COPY . .

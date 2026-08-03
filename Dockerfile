FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN pip install dbt-snowflake

CMD ["dbt","run"]

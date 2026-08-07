#!/bin/sh

set -e

echo "Starting dbt container..."

echo "Checking dbt installation..."
dbt --version

echo "Running dbt debug..."
dbt debug

echo "Running dbt models..."
dbt run

echo "dbt execution completed."

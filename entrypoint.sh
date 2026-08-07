#!/bin/sh

set -e

echo "===== dbt Version ====="
dbt --version

echo "===== Git Version ====="
git --version

echo "===== Running dbt Debug ====="
dbt debug

echo "===== Running dbt Models ====="
dbt run

echo "===== Completed ====="

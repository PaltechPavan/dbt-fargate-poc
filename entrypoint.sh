#!/bin/sh

set -e

echo "===== Current Directory ====="
pwd

echo "===== Files in /app ====="
find /app

echo "===== dbt Version ====="
dbt --version

echo "===== Git Version ====="
git --version

echo "===== Running dbt Debug ====="
dbt debug

echo "===== Running dbt Models ====="
dbt run

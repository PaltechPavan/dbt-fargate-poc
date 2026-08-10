#!/bin/sh
set -e

echo "===== Installed Python packages ====="
pip freeze | grep dbt

echo "===== dbt packages directory ====="
find /app -name "dbt_packages" -type d

echo "===== dbt_athena directories ====="
python -c "
import site, glob
for d in site.getsitepackages():
    for p in glob.glob(d + '/**/dbt_athena', recursive=True):
        print(p)
"

echo "===== Running dbt Debug ====="
dbt debug

echo "===== Running dbt Models ====="
dbt run

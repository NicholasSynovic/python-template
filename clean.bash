#!/bin/bash

filename=$(basename -- "$fullfile")
filename="${filename%.*}"

poetry run isort $1
poetry run autoflake --in-place --remove-all-unused-imports --remove-duplicate-keys --remove-unused-variables $1
poetry run black $1

bandit -i --severity-level all -o bandit_$filename.txt $1
mypy --strict --pretty --txt-report mypy_$filename.txt $1

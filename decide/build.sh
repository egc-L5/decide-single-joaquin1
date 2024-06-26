#!/usr/bin/env bash
# exit on error
set -o errexit

cd ..

pip install -r requirements.txt

cd decide

python manage.py collectstatic --no-input
python manage.py migrate
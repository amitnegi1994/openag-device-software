#!/bin/bash

rm -fr venv
virtualenv -p python3 venv
source venv/bin/activate
pip install -r requirements.txt

echo 'Creating the django root account:'
python manage.py createsuperuser
python manage.py migrate
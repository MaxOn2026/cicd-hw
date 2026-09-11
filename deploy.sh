#!/bin/bash

cd /home/max/django_cicd
git pull origin master
source .venv/bin/activate
pip install -r requirements.txt
python manage.py migrate
python manage.py collectstatic
sudo systemctl restart gunicorn

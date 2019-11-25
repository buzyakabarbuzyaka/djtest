#!/bin/bash

sudo fuser 8000/tcp -k

cd /home/ark/djtest ; echo "1"
sudo git pull ; echo "2"
pip3 install -r requirements.txt ; echo "3"
nohup python3 manage.py runserver 0.0.0.0:8000 ; echo "4"

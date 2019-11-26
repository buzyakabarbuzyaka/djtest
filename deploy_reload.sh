#!/bin/bash

sudo fuser 8000/tcp -k

cd /home/ark/djtest
sudo git pull
. venv/bin/activate
pip3 install -r requirements.txt
nohup python3 manage.py runserver 0.0.0.0:8000 > server_log.txt &

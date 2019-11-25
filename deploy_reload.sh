#!/bin/bash

sudo fuser 8000/tcp -k

cd djtest
sudo git pull
pip3 install -r requirements.txt
nohup python3 manage.py runserver 0.0.0.0:8000

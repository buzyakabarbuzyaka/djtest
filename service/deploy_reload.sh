#!/bin/bash


#git pull
mkdir ./logs
mkdir ./pids

. venv/bin/activate
pip3 -q install -r requirements.txt --log=logs/pip.log

python3 manage.py runserver 0.0.0.0:8000 > logs/server.log

#!/bin/bash

cd /home/ark/djtest/
sudo git pull
. venv/bin/activate
pip3 install -r requirements.txt
python3 manage.py runserver 0.0.0.0:8000 >> logs/server_log.txt

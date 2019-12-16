#!/bin/bash

cp djtest.service /etc/systemd/system/djtest.service
systemctl daemon-reload
systemctl enable djtest
systemctl start djtest


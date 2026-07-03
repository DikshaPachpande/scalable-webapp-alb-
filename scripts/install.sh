#!/bin/bash

sudo yum update -y

sudo yum install python3 -y

pip3 install flask gunicorn

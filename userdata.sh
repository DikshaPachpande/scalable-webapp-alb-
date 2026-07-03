#!/bin/bash

yum update -y
yum install python3 git -y

pip3 install flask gunicorn

mkdir /home/ec2-user/app
cd /home/ec2-user/app

cat > app.py << EOF
from flask import Flask
import socket

app=Flask(__name__)

@app.route("/")
def home():
    return f"<h1>Server: {socket.gethostname()}</h1>"

app.run(host="0.0.0.0",port=80)
EOF

python3 app.py

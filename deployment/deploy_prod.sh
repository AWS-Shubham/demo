#!/bin/sh

ssh root@ec2-3-128-27-195.us-east-2.compute.amazonaws.com <<EOF
  cd blogprojectdrf
  git pull 
  source env/bin/activate
  ./manage.py migrate
  sudo systemctl restart nginx
  sudo service gunicorn restart
  sudo service nginx restart
  exit
EOF
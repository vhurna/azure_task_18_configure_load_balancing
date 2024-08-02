#! /bin/bash 

echo "Running a setup steps ..."
hostname > /data/app/todolist/static/files/hostname

pip install -r requirements.txt
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:8080

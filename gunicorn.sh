#!/bin/sh

source env/bin/activate

python3 manage.py migrate

sudo cp -rf gunicorn.service /etc/systemd/system/

sudo systemctl reload gunicorn

sudo systemctl start gunicorn

echo "Gunicorn has started."

sudo systemctl enable gunicorn

echo "Gunicorn has been enabled."

sudo systemctl status gunicorn

sudo systemctl restart gunicorn
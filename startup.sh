#!/bin/sh

source env/bin/activate

python3 manage.py migrate

if [ -f "/etc/systemd/system/gunicorn.service" ] 
then
    echo "service file exists." 
else
    sudo cp gunicorn.service /etc/systemd/system/
fi

sudo systemctl start gunicorn

echo "Gunicorn has started."

sudo systemctl enable gunicorn

echo "Gunicorn has been enabled."

sudo systemctl status gunicorn
#!/bin/sh

sudo pip3 install virtualenv

if [ -d "env" ] 
then
    echo "Env exists." 
else
    python3 -m venv env
fi

source env/bin/activate

pip3 install -r requirements.txt 

cp .env.example .env
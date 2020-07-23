#!/bin/sh

# sudo pip3 install virtualenv

if [ -d "env" ] 
then
    echo "Env exists." 
else
    python3 -m venv env
fi

source env/bin/activate

pip3 install -r requirements.txt 

if [ -f ".env" ] 
then
    echo "env file exists." 
else
    cp .env.example .env
fi

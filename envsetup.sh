#!/bin/sh

sudo pip3 install virtualenv

if [ -d "env" ] 
then
    echo "Env exists." 
else
    virtualenv env
fi

source env/bin/activate

pip3 install -r requirements.txt 

cp .env.example .env
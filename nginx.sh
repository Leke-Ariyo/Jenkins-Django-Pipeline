#!/bin/sh

sudo cp -rf app.conf /etc/nginx/conf.d

sudo usermod -a -G jenkins nginx

chmod 710 /var/lib/jenkins/workspace/DjangoJenkins

sudo nginx -t

sudo systemctl restart nginx
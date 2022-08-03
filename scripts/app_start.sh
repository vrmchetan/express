#!/bin/bash
cd /home/ubuntu/
pm2 start npm --name "Dogs" -- start
pm2 startup
pm2 save
pm2 restart all
systemctl restart mongod
systemctl enable mongod

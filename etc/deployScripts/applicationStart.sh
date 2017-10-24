#!/bin/sh

ln -s /etc/init.d/trial /home/ec2-user/webapps/trial-1.0.jar
service trial start
chkconfig trial on

#!/bin/sh

PROJECT_NAME=trial
PRODUCT_VERSION=1.0

WEBAPPS_DIR=/home/ec2-user/webapps
PRODUCT_FILE=${WEBAPPS_DIR}/${PROJECT_NAME}-${PRODUCT_VERSION}.jar

INIT_DIR=/etc/init.d
INIT_SCRIPT=${INIT_DIR}/${PROJECT_NAME}

if [ ! -f ${INIT_SCRIPT} ];then
  ln -s ${PRODUCT_FILE} ${INIT_SCRIPT}
  chkconfig ${PROJECT_NAME} on
fi

service ${PROJECT_NAME} restart

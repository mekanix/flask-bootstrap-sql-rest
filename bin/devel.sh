#!/bin/sh


BIN_DIR=`dirname $0`
export FLASK_PORT=${FLASK_PORT:=5000}
API_ROOT="http://`hostname`:${FLASK_PORT}/api/v0/doc/"
. ${BIN_DIR}/common.sh
setup


echo "Backend"
echo "==============="
echo " * API_ROOT: ${API_ROOT}"
flask run -h 0.0.0.0 -p ${FLASK_PORT}

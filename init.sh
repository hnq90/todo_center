#!/bin/sh

source ./default.env

echo HOST=$HOST
echo GO_TODO_API_PORT=$GO_TODO_API_PORT
echo REACT_TODO_WEB_PORT=$REACT_TODO_WEB_PORT
echo PHP_TODO_API_PORT=$PHP_TODO_API_PORT
echo DB_PASSWORD=$DB_PASSWORD
echo DB_NAME=$DB_NAME
echo DB_USER=$DB_USER
echo DB_PORT=$DB_PORT
echo PHP_FPM_PORT=$PHP_FPM_PORT
echo WEB_GATEWAY_PORT=$WEB_GATEWAY_PORT
echo WEB_GATEWAY_SSL_PORT=$WEB_GATEWAY_SSL_PORT
echo API_GATEWAY_PORT=$API_GATEWAY_PORT
echo API_GATEWAY_SSL_PORT=$API_GATEWAY_SSL_PORT
echo API_ENDPOINT=$API_ENDPOINT

# find and replace
sed -e "s/{{ HOST }}/$HOST/g" \
    -e "s/{{ WEB_GATEWAY_PORT }}/$WEB_GATEWAY_PORT/g" \
    -e "s/{{ WEB_GATEWAY_SSL_PORT }}/$WEB_GATEWAY_SSL_PORT/g" \
    -e "s/{{ API_GATEWAY_PORT }}/$API_GATEWAY_PORT/g" \
    -e "s/{{ API_GATEWAY_SSL_PORT }}/$API_GATEWAY_SSL_PORT/g" \
    -e "s/{{ GO_TODO_API_PORT }}/$GO_TODO_API_PORT/g" \
    -e "s/{{ REACT_TODO_WEB_PORT }}/$REACT_TODO_WEB_PORT/g" \
    -e "s/{{ PHP_TODO_API_PORT }}/$PHP_TODO_API_PORT/g" \
    -e "s/{{ DB_PASSWORD }}/$DB_PASSWORD/g" \
    -e "s/{{ DB_NAME }}/$DB_NAME/g" \
    -e "s/{{ DB_USER }}/$DB_USER/g" \
    -e "s/{{ DB_PORT }}/$DB_PORT/g" \
    -e "s/{{ API_GATEWAY_PORT }}/$API_GATEWAY_PORT/g" \
    -e "s/{{ PHP_FPM_PORT }}/$PHP_FPM_PORT/g" \
    -e "s/{{ API_ENDPOINT }}/$API_ENDPOINT/g" \
    < docker-compose-template.yml \
    > docker-compose.yml

# For MariaDB
if [ ! -d "/data/mariadb" ]; then
  sudo mkdir -p /data/mariadb/data
  sudo mkdir -p /data/mariadb/conf
fi

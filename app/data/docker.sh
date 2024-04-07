#!/bin/bash

# Read properties from database.properties
while IFS='=' read -r key value
do
    key=$(echo $key | tr '.' '_')
    eval "${key}='${value}'"
done < database.properties

docker stop mysql
docker rm mysql

docker create --name mysql \
    -e MYSQL_DATABASE=${name} \
    -e MYSQL_USER=${user} \
    -e MYSQL_PASSWORD=${pass} \
    -e MYSQL_ROOT_PASSWORD=${pass} \
    -v ./schema.sql:/docker-entrypoint-initdb.d/schema.sql \
    -p ${port}:3306 \
    mysql:8.0.36

docker network connect app mysql

docker update --restart=always mysql

docker start mysql

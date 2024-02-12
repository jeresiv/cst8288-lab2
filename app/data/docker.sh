# Install MySQL

docker stop mysql

docker rm mysql

docker create --name mysql \
    -e MYSQL_DATABASE={dbname} \
    -e MYSQL_USER={username} \
    -e MYSQL_PASSWORD={password} \
    -p 3306:3306 \
    mysql:8.0.36

docker network connect app mysql

docker update --restart=always mysql

docker start mysql
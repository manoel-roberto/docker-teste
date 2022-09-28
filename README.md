# docker-teste(Com Dockercompose)




iniciar docker
docker-compose up -d

parar docker
docker-compose stop 









# docker-teste (Com Dockerfile)

Baixar imagem do MySQL
docker build -t mysql-image -f api/db/Dockerfile .

Criação do container com volume
docker run -d -v $(pwd)/api/db/data:/var/lib/mysql --rm --name mysql-container mysql-image

Execução do Script.sql

docker exec -i mysql-container mysql -uroot -psenha123 < api/db/script.sql

Verificar se foi criado o banco de dados e tabelas

Acessar docker mysql
docker exec -it mysql-container /bin/bash
Consultas SQL
mysql -uroot -psenha123
show databases;
USE db_teste;
select * from products;

ALTER USER root IDENTIFIED WITH mysql_native_password BY 'senha123';
flush privileges;

Criação projeto node
yarn init -y
yarn add nodemon -D
yarn express mysql


Baixar imagem Node

docker build -t node-image -f api/Dockerfile .

criar container node

docker run -d -v $(pwd)/api:/home/node/app -p 9001:9001 --link mysql-container --rm --name node-container node-image

Acessar a api
http://localhost:9001/products


Baixar imagem php
docker build -t php-image -f website/Dockerfile .

Criação container
docker run -d -v $(pwd)/website:/var/www/html -p 8888:80 --link node-container --rm --name php-container php-image


http://localhost:8888/

docker image ls 
docker ps
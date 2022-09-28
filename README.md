# docker-teste

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



Criação projeto node
yarn init -y
yarn add nodemon -D
yarn express mysql

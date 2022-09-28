# docker-teste

Baixar imagem do MySQL
docker build -t mysql-image -f api/db/Dockerfile .

Criação do container com volume
docker run -d -v $(pwd)/api/db/data:/var/lib/mysql --rm --name mysql-container mysql-image

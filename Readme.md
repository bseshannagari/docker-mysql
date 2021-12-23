Dockerfile

script.sql

create table users(user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, name TEXT, phone_number TEXT);
insert into users(name,phone_number) values('aaa','9988443322');
insert into users(name,phone_number) values('aab','9988113322');
insert into users(name,phone_number) values('aba','9988441122');
insert into users(name,phone_number) values('abc','9988443311');
insert into users(name,phone_number) values('abb','9911443322');


docker build -t bseshannagari/mysqldb01 .
--here bharath/mysqldb01 is name of my image and . indicates current directory. It means Dockerfile exists in current directory.

--verfiy docker images:

docker images
--your costomized image should exists in the list

create container using your costomized image:
docker run --name mysqldb-myDB -p3307:3306 -d bseshannagari/mysqldb01
--here mysqldb-myDB is name of my container and 3307 is mapped port, actual port is 3306. 
-- '-d' is used to create container as detached mode. bharath/mysqldb01 is my customized image name.
verify container created:
docker ps
docker ps -f name=mysql

connect to newly created db(i.e mysqldb-myDB)

docker exec -it mysqldb-myDB /bin/bash 

--now you will be inside container.

--try connect to mysql using user name password specified in the Dockerfile.

mysql -u bharath -p1234

verify mysql databases
show databases;

use users;

verfiy tables:
show tables;



docker stop container_id


docker rm container_id
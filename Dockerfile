FROM mysql:latest
ENV MYSQL_ROOT_PASSWORD 123
ENV MYSQL_DATABASE users
ENV MYSQL_USER bharath
ENV MYSQL_PASSWORD 1234
ADD script.sql /docker-entrypoint-initdb.d
EXPOSE 3306
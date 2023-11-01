FROM mysql

ENV MYSQL_ROOT_PASSWORD=1234
ENV MYSQL_DATABASE=test3

ADD  ./initdb/* /docker-entrypoint-initdb.d
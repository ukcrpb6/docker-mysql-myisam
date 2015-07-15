# mysql-myisam
#
# VERSION       5.5

FROM mysql:5.5
MAINTAINER Bob Browning, bob.browning@pressassociation.com

ENV MYSQL_CHARSET=utf8
ENV MYSQL_COLLATION=utf8_bin

ADD ./conf.d/charset.cnf /etc/mysql/conf.d/charset.cnf
ADD ./entrypoint.sh .
RUN chmod +x ./entrypoint.sh

EXPOSE 3306

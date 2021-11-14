FROM centos:7

RUN yum install httpd net-tools php -y

COPY ./app/* /var/www/html

EXPOSE 80

ENTRYPOINT [ "/usr/sbin/httpd", "-DFOREGROUND" ]
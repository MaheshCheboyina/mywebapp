#This is build  by my own apache
FROM centos:latest
MAINTAINER maheshpavan021@gmail.com
RUN yum -y update
RUN yum -y install httpd
EXPOSE 80
ADD code /var/www/html
CMD ["apachectl", "-D","FOREGROUND"]

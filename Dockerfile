#FROM 137112412989.dkr.ecr.us-east-1.amazonaws.com/amazonlinux:2016.09
FROM centos:7
MAINTAINER CloudOps Version 1.0

RUN yum install -y httpd
ADD https://s3-ap-southeast-1.amazonaws.com/testjenkins1233/index.html /var/www/html/

CMD /usr/sbin/httpd -D FOREGROUND

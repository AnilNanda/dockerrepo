FROM centos:7
LABEL owner="anil" 

RUN yum install -y httpd
ADD index.html /var/www/html/
RUN chmod +r /var/www/html/index.html
CMD /usr/sbin/httpd -D FOREGROUND

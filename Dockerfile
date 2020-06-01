FROM centos:latest
RUN yum install vim -y
RUN yum install /sbin/service -y
RUN yum install httpd -y
RUN yum install php -y
#RUN yum install php-common php php php-mysql php-xml php-soap ncurses net-tools-y
COPY index.html /var/www/html
CMD /usr/sbin/httpd -DFOREGROUND && /bin/bash
EXPOSE 80
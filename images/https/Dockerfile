FROM centos
RUN yum install httpd -y
RUN yum install mod_ssl -y
COPY ca.crt /etc/pki/tls/certs/localhost.crt
COPY ca.key /etc/pki/tls/private/localhost.key
ADD index.html /var/www/html/
COPY vhost.conf /etc/httpd/conf.d/
EXPOSE 80 443
CMD ["httpd", "-D", "FOREGROUND"]

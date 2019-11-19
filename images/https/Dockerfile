FROM centos
RUN yum install httpd -y
RUN yum install mod_ssl -y
COPY ca.crt /etc/pki/tls/certs/localhost.crt
COPY ca.key /etc/pki/tls/private/localhost.key
ADD index.html /var/www/html/
RUN ln -sf /dev/stdout /var/log/httpd/ssl_access_log \
        && ln -sf /dev/stderr /var/log/httpd/ssl_error_log \
        && ln -sf /dev/stdout /var/log/httpd/access_log \
        && ln -sf /dev/stderr /var/log/httpd/error_log
COPY vhost.conf /etc/httpd/conf.d/
EXPOSE 80 443
CMD ["httpd", "-D", "FOREGROUND"]

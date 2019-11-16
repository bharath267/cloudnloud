FROM ubuntu
MAINTAINER <jinojoe@gmail.com>
RUN apt update -q
RUN apt install supervisor apache2 openssh-server -q -y
RUN mkdir /var/lock/apache2 /var/run/apache2 /var/run/sshd
RUN echo 'root:jino' | chpasswd
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -i '/\[supervisord\]/a nodaemon=true' /etc/supervisor/supervisord.conf
COPY service.conf /etc/supervisor/conf.d/
EXPOSE 22 80
CMD ["supervisord"]

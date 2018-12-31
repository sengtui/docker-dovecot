FROM centos:latest
MAINTAINER Jerry Huang
RUN /usr/bin/yum -y install dovecot
COPY dovecot.conf /etc/dovecot/dovecot.conf
COPY 10-mail.conf /etc/dovecot/conf.d/10-mail.conf
COPY 10-ssl.conf /etc/dovecot/conf.d/10-ssl.conf
COPY create-user.sh /root/create-user.sh
COPY setup-user.sh /root/setup-user.sh
EXPOSE 143 993
CMD ["/usr/sbin/dovecot","-F"]

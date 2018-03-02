FROM centos:7

RUN yum install -y http://rpms.famillecollet.com/enterprise/7/remi/x86_64/remi-release-7.3-2.el7.remi.noarch.rpm && \
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7 /etc/pki/rpm-gpg/RPM-GPG-KEY-remi /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 && \
yum-config-manager --enable remi,remi-php55 && \
yum install -y php php-common php-cli php-pear php-pecl-igbinary php-pdo php-gd php-xml php-soap php-mysqlnd php-mbstring php-mcrypt php-devel php-pecl-memcache && \
yum install -y curl unix2dos && \
yum clean all && \
rm -rf /var/cache/yum

RUN curl -sS "https://getcomposer.org/installer" | php
RUN mv composer.phar /usr/local/bin/composer


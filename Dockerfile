FROM centos:6.9

# https://vault.centos.org/centos/6.9/
RUN sed -i "s|#baseurl=|baseurl=|g" /etc/yum.repos.d/CentOS-Base.repo \
  && sed -i "s|mirrorlist=|#mirrorlist=|g" /etc/yum.repos.d/CentOS-Base.repo \
  && sed -i "s|http://mirror\.centos\.org/centos/\$releasever|http://vault\.centos\.org/centos/6.9|g" /etc/yum.repos.d/CentOS-Base.repo

RUN rpm -Uvh https://archives.fedoraproject.org/pub/archive/epel/6/x86_64/epel-release-6-8.noarch.rpm

RUN yum install -y \
      php \
      php-devel \
      php-mbstring \
      php-pdo \
      php-gd \
      php-xml \
      php-mcrypt \
      php-mysql \
      php-pear \
      zip \
      unzip \
      httpd

CMD ["apachectl", "-DFOREGROUND"]

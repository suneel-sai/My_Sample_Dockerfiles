# httpd for Debian packages
# Apache2 for RPM packages
FROM debian/rpm:version
MAINTAINER SuneelSai
RUN apt-get/yum update && apt-get/yum install -y -q apche2/httpd
CMD ["apache2/httpd", "-g", "daemon off;"]
EXPOSE 80 443

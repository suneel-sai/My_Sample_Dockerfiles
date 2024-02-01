FROM debian/rpm:version
MAINTAINER SuneelSai
RUN apt-get/yum update && apt-get/yum install -y -q nginx
CMD ["nginx", "-g", "daemon off;"]
EXPOSE 80 443

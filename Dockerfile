FROM dock0/arch
MAINTAINER akerl <me@lesaker.org>

ADD installer.sh /usr/local/bin/installer.sh

RUN installer.sh https://github.com/akerl/s6/releases/download/1.1.3.2-2/s6.tar.gz
RUN installer.sh https://github.com/akerl/execline/releases/download/1.3.1.1-2/execline.tar.gz

ADD service /service
ADD init /init
CMD ["/init"]

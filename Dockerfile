FROM dock0/arch
MAINTAINER akerl <me@lesaker.org>

ADD installer.sh /usr/local/bin/installer.sh

RUN installer.sh https://github.com/amylum/s6/releases/download/2.1.0.1-7/s6.tar.gz
RUN installer.sh https://github.com/amylum/execline/releases/download/2.0.2.0-8/execline.tar.gz

ADD service /service
ADD init /init
CMD ["/init"]

FROM dock0/arch
MAINTAINER akerl <me@lesaker.org>

RUN pacman -Syu --needed --noconfirm make gcc psmisc

ADD builder.sh /usr/local/bin/builder.sh

ADD skalibs /opt/skalibs
ADD execline /opt/execline
ADD s6 /opt/s6

RUN builder.sh skalibs
RUN builder.sh execline
RUN builder.sh s6

ADD service /service
ADD init /init
CMD ["/init"]

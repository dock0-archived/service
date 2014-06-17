FROM dock0/arch
MAINTAINER akerl <me@lesaker.org>

RUN pacman -Syu --needed --noconfirm make gcc git

ADD builder.sh /usr/local/bin/builder.sh

RUN builder.sh skalibs
RUN builder.sh execline
RUN builder.sh s6

ADD service /service
ADD stage1 /sbin/init
ADD stage3 /service/.s6-svscan/finish
CMD ["/sbin/init"]

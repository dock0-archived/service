FROM dock0/arch
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm s6 execline
ADD service /service
ADD init /init
CMD ["/init"]

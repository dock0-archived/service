FROM docker.pkg.github.com/dock0/amylum_arch/amylum_arch:20200610-f6a332b
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm s6 execline musl-amylum
ADD service /service
ADD init /init
CMD ["/init"]

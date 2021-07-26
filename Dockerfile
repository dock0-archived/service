FROM docker.pkg.github.com/dock0/amylum_arch/amylum_arch:20210726-fc7e11a
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm s6 execline musl-amylum
ADD service /service
ADD init /init
CMD ["/init"]

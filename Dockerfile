FROM docker.pkg.github.com/dock0/amylum_arch/amylum_arch:20200904-fad0e00
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm s6 execline musl-amylum
ADD service /service
ADD init /init
CMD ["/init"]

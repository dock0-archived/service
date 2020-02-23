FROM docker.pkg.github.com/dock0/amylum_arch/amylum_arch:20200223-e3a8175
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm s6 execline musl-amylum
ADD service /service
ADD init /init
CMD ["/init"]

FROM docker.pkg.github.com/dock0/amylum_arch/amylum_arch:20200704-9c81f3a
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm s6 execline musl-amylum
ADD service /service
ADD init /init
CMD ["/init"]

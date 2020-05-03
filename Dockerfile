FROM docker.pkg.github.com/dock0/amylum_arch/amylum_arch:20200503-11d98f6
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm s6 execline musl-amylum
ADD service /service
ADD init /init
CMD ["/init"]

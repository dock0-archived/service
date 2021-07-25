FROM docker.pkg.github.com/dock0/amylum_arch/amylum_arch:20210725-7d3c260
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm s6 execline musl-amylum
ADD service /service
ADD init /init
CMD ["/init"]

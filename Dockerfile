FROM docker.pkg.github.com/dock0/amylum_arch/amylum_arch:20210729-9c8c30b
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm s6 execline musl-amylum
ADD service /service
ADD init /init
CMD ["/init"]

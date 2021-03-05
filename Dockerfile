FROM docker.pkg.github.com/dock0/amylum_arch/amylum_arch:20210305-fc64c1c
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm s6 execline musl-amylum
ADD service /service
ADD init /init
CMD ["/init"]

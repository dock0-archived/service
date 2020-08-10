FROM docker.pkg.github.com/dock0/amylum_arch/amylum_arch:20200810-239a9bc
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm s6 execline musl-amylum
ADD service /service
ADD init /init
CMD ["/init"]

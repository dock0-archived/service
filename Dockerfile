FROM docker.pkg.github.com/dock0/amylum_arch/amylum_arch:20200813-1a3a6ad
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm s6 execline musl-amylum
ADD service /service
ADD init /init
CMD ["/init"]

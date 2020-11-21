FROM docker.pkg.github.com/dock0/amylum_arch/amylum_arch:20201121-3d5f4ca
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm s6 execline musl-amylum
ADD service /service
ADD init /init
CMD ["/init"]

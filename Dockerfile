FROM docker.pkg.github.com/dock0/amylum_arch/amylum_arch:20200814-ec1a32f
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm s6 execline musl-amylum
ADD service /service
ADD init /init
CMD ["/init"]

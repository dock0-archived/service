FROM docker.pkg.github.com/dock0/amylum_arch/amylum_arch:20200403-87f88e3
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm s6 execline musl-amylum
ADD service /service
ADD init /init
CMD ["/init"]

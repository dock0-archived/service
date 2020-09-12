FROM docker.pkg.github.com/dock0/amylum_arch/amylum_arch:20200912-20cd81c
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm s6 execline musl-amylum
ADD service /service
ADD init /init
CMD ["/init"]

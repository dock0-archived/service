FROM docker.pkg.github.com/dock0/amylum_arch/amylum_arch:20210306-56a4b7d
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm s6 execline musl-amylum
ADD service /service
ADD init /init
CMD ["/init"]

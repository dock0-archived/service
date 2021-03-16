FROM docker.pkg.github.com/dock0/amylum_arch/amylum_arch:20210316-293e7d1
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm s6 execline musl-amylum
ADD service /service
ADD init /init
CMD ["/init"]

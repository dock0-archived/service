FROM docker.pkg.github.com/dock0/amylum_arch/amylum_arch:20210104-e02f48d
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm s6 execline musl-amylum
ADD service /service
ADD init /init
CMD ["/init"]

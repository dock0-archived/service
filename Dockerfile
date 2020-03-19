FROM docker.pkg.github.com/dock0/amylum_arch/amylum_arch:20200319-0a9c65c
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm s6 execline musl-amylum
ADD service /service
ADD init /init
CMD ["/init"]

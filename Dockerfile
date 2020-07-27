FROM docker.pkg.github.com/dock0/amylum_arch/amylum_arch:20200727-7f0c86f
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm s6 execline musl-amylum
ADD service /service
ADD init /init
CMD ["/init"]

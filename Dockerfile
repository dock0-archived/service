FROM docker.pkg.github.com/dock0/amylum_arch/amylum_arch:20200609-a2f94c3
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm s6 execline musl-amylum
ADD service /service
ADD init /init
CMD ["/init"]

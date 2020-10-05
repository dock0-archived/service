FROM docker.pkg.github.com/dock0/amylum_arch/amylum_arch:20201005-aea7c1e
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm s6 execline musl-amylum
ADD service /service
ADD init /init
CMD ["/init"]

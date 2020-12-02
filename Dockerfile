FROM docker.pkg.github.com/dock0/amylum_arch/amylum_arch:20201202-6d6315c
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm s6 execline musl-amylum
ADD service /service
ADD init /init
CMD ["/init"]

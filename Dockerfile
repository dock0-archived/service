FROM docker.pkg.github.com/dock0/amylum_arch/amylum_arch:20210304-29d460e
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm s6 execline musl-amylum
ADD service /service
ADD init /init
CMD ["/init"]

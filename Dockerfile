FROM docker.pkg.github.com/dock0/amylum_arch/amylum_arch:20210731-78b5b91
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm s6 execline musl-amylum
ADD service /service
ADD init /init
CMD ["/init"]

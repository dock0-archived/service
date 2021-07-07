FROM docker.pkg.github.com/dock0/amylum_arch/amylum_arch:20210707-66e9f70
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm s6 execline musl-amylum
ADD service /service
ADD init /init
CMD ["/init"]

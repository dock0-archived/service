FROM docker.pkg.github.com/dock0/amylum_arch/amylum_arch:20201203-0e94a5c
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm s6 execline musl-amylum
ADD service /service
ADD init /init
CMD ["/init"]

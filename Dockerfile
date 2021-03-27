FROM docker.pkg.github.com/dock0/amylum_arch/amylum_arch:20210327-10b2a4f
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm s6 execline musl-amylum
ADD service /service
ADD init /init
CMD ["/init"]

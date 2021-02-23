FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive LANG=en_US.utf8

COPY scripts/* /

RUN set -ex \
    && chmod +x *.sh \
    && mv 99_norecommends /etc/apt/apt.conf.d/ \
    && sed -i -- 's/# deb-src/deb-src/g' /etc/apt/sources.list \
    && ./update.sh \
    && apt-get install -y \
               build-essential \
               cdbs \
               devscripts \
               equivs \
               checkinstall \
               fakeroot \
               locales \
               pkg-config \
               cmake \
               nasm \
               git \
               wget \
               curl \
               clang \
               zsh \
               vim \
               debmake \
               software-properties-common \
               apt-utils \
    && ./clean.sh \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8 \
    && ./zsh-config.sh \
        -t robbyrussell \
        -p git \
        -p ubuntu \
        -p rsync \
        -p extract

CMD ["/bin/zsh"]
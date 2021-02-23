FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive LANG=en_US.utf8

COPY scripts/99_norecommends /etc/apt/apt.conf.d/99_norecommends

RUN set -ex \
    && mkdir -p ~/.ssh && sed -i -- 's/# deb-src/deb-src/g' /etc/apt/sources.list \
    && apt-get update \
    && apt-get install -y \
               openssh-client \
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
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /tmp/* /var/tmp/* \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8 \
    && sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.1/zsh-in-docker.sh)" -- \
        -t robbyrussell \
        -p git \
        -p ubuntu \
        -p rsync \
        -p extract

CMD ["/bin/zsh"]
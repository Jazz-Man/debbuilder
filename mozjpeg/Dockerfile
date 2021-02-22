FROM debbuilder
#RUN set -ex \
#    && mkdir -p ~/.ssh && sed -i -- 's/# deb-src/deb-src/g' /etc/apt/sources.list \
#    && apt-get update \
#    && apt-get install -y --no-install-recommends \
#               openssh-client \
#               build-essential \
#               cdbs \
#               devscripts \
#               equivs \
#               checkinstall \
#               fakeroot \
#               locales \
#               pkg-config \
#               cmake \
#               nasm \
#               git \
#               wget \
#               clang \
#    && apt-get clean \
#    && rm -rf /var/lib/apt/lists/* \
#    && rm -rf /tmp/* /var/tmp/* \
#    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
#
#ENV DEBIAN_FRONTEND=noninteractive LANG=en_US.utf8
FROM vsokolyk/debbuilder
WORKDIR work
COPY --from=mozjpeg /work/*.deb /work/

RUN /update.sh \
    && apt-get install -y /work/*.deb \
    && apt-get install -y libjbig-dev zlib1g-dev liblzma-dev \
    && git clone https://gitlab.com/libtiff/libtiff.git \
    && cd libtiff \
    && ./autogen.sh \
    && ./configure \
        --prefix=/usr \
        --enable-cxx \
        --enable-defer-strile-load \
        --enable-chunky-strip-read \
        --with-aix-soname=both \
        --enable-ld-version-script \
    && checkinstall \
        --pkgname=libtiff-dev \
        --pkgversion=4.2.0 \
        --requires="mozjpeg,libjbig-dev,zlib1g-dev,liblzma-dev" \
        --provides="libtiff-dev,libtiff5,libtiff5-dev" \
        --maintainer="vsokolyk@gmail.com" \
        --backup=no \
        --install=no \
        -D \
        --default \
    && mkdir -p /work/deb/ \
    && cp *.deb /work/deb \
    && apt remove -y mozjpeg libjbig-dev zlib1g-dev liblzma-dev \
    && /clean.sh
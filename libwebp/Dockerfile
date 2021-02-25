FROM vsokolyk/debbuilder
WORKDIR work
COPY --from=mozjpeg /work/*.deb /work/
COPY --from=libtiff /work/deb/*.deb /work/

RUN /update.sh \
    && apt-get install -y /work/*.deb \
    && apt-get install -y libgif-dev libsdl1.2-dev \
    && git clone https://github.com/webmproject/libwebp.git \
    && cd libwebp \
    && ./autogen.sh \
    && ./configure \
        --enable-everything \
        --enable-asserts \
        --enable-swap-16bit-csp \
    && checkinstall \
        --pkgname=libwebp-dev \
        --pkgversion=1.2.0 \
        --requires="mozjpeg,libtiff-dev,libgif-dev,libsdl1.2-dev" \
        --provides=libwebp-dev \
        --maintainer="vsokolyk@gmail.com" \
        --backup=no \
        --install=no \
        -D \
        --default \
    && mkdir -p /work/deb/ \
    && cp *.deb /work/deb \
    && apt remove -y mozjpeg libtiff-dev libgif-dev libsdl1.2-dev \
    && rm -rf /work/libwebp \
    && /clean.sh
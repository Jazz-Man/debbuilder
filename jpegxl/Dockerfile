FROM debbuilder

WORKDIR work

COPY --from=mozjpeg /work/*.deb /work/
COPY --from=libtiff /work/deb/*.deb /work/
COPY --from=libwebp /work/deb/*.deb /work/

RUN apt-get -yqq update \
    && apt install -y /work/*.deb \
    && apt install -y libbrotli-dev libopenexr-dev libgoogle-perftools-dev \
    && git clone https://gitlab.com/wg1/jpeg-xl.git --recursive \
    && cd jpeg-xl && mkdir build && cd build \
    && cmake ../ \
       -DCMAKE_BUILD_TYPE=Release \
       -DBUILD_TESTING=OFF \
       -DJPEGXL_FORCE_SYSTEM_BROTLI=TRUE \
    && checkinstall \
        --pkgname=libjxl-dev \
        --pkgversion=0.3.2 \
        --requires="libbrotli-dev,libgif-dev,mozjpeg,libopenexr-dev,libpng-dev,libwebp-dev,libtiff-dev,libgoogle-perftools-dev" \
        --provides="libjxl-dev,libhwy-dev" \
        --maintainer="vsokolyk@gmail.com" \
        --backup=no \
        --install=no \
        -D \
        --default \
    && cp *.deb /work \
    && apt-get clean \
    && apt remove -y libtiff-dev libbrotli-dev libgif-dev mozjpeg libopenexr-dev libpng-dev libwebp-dev \
    && apt autoremove -y \
    && apt autoclean \
    && rm -rf /work/jpeg-xl/* \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /tmp/* /var/tmp/*
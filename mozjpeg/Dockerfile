FROM vsokolyk/debbuilder
WORKDIR work
COPY ./deb-control.in /work
RUN /update.sh \
    && apt-get install -y libpng-dev \
    && git clone https://github.com/mozilla/mozjpeg \
    && mv deb-control.in mozjpeg/release \
    && mkdir -p mozjpeg/build \
    && cd mozjpeg/build \
    && cmake ../  -G"Unix Makefiles" \
         -DCMAKE_INSTALL_PREFIX=/usr \
         -DWITH_JPEG8=1 \
         -DENABLE_STATIC=0 \
         -DPNG_SUPPORTED=1 \
         -DWITH_12BIT=1 \
         -DWITH_ARITH_DEC=1 \
         -DWITH_ARITH_ENC=1 \
         -DWITH_JPEG7=1 \
         -DWITH_MEM_SRCDST=1 \
         -DWITH_SIMD=1 \
         -DWITH_TURBOJPEG=1 \
     && make deb \
     && cp *.deb /work/ \
     && apt remove -y libpng-dev \
     && rm -rf /work/mozjpeg/ \
     && /clean.sh

FROM vsokolyk/debbuilder

WORKDIR work

COPY --from=mozjpeg /work/*.deb /work/
COPY --from=libtiff /work/deb/*.deb /work/
COPY --from=libwebp /work/deb/*.deb /work/
COPY --from=jpegxl /work/deb/*.deb /work/

RUN /update.sh \
    && apt install -y /work/*.deb
#    && git clone https://github.com/ImageMagick/ImageMagick \
#    && cd ImageMagick \
#    && ./configure \
#         --enable-shared \
#         --disable-static \
#         --with-jxl
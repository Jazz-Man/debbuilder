FROM debbuilder

WORKDIR work

COPY --from=mozjpeg /work/*.deb /work/
COPY --from=libtiff /work/deb/*.deb /work/
COPY --from=libwebp /work/deb/*.deb /work/
COPY --from=jpegxl /work/deb/*.deb /work/

RUN apt-get -yqq update \
    && apt install -y /work/*.deb
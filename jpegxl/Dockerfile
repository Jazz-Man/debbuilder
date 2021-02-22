FROM debbuilder

WORKDIR work

#RUN set -ex \
# && mkdir -p /work/deb/ && apt-get -yqq update \
# && apt-get install -y --no-install-recommends libbrotli-dev \
#                                               libgif-dev \
#                                               libjpeg-dev \
#                                               libopenexr-dev \
#                                               libpng-dev \
#                                               libwebp-dev \
#                                               libegl1-mesa-dev \
#                                               freeglut3-dev \
#                                               libgoogle-perftools-dev \
#                                               extra-cmake-modules \
#                                               ninja-build \
#                                               clang \
#                                               doxygen \
# && git clone https://gitlab.com/wg1/jpeg-xl.git --recursive && cd jpeg-xl && mkdir build && cd build
# && cmake ../ \
#          -DCMAKE_BUILD_TYPE=Release \
#          -DJPEGXL_VERSION= \
#          -DSANITIZER=none \
#          -DJPEGXL_ENABLE_VIEWERS=ON \
#          -DJPEGXL_ENABLE_PLUGINS=ON \
#          -DJPEGXL_ENABLE_DEVTOOLS=ON \
#          -DCMAKE_PREFIX_PATH=/usr \
#          -DJPEGXL_FORCE_SYSTEM_GTEST=TRUE \
#          -DJPEGXL_FORCE_SYSTEM_BROTLI=TRUE
#
## libopenjp2-7-dev
#
##           libgdk-pixbuf2.0-dev
## sudo add-apt-repository ppa:otto-kesselgulasch/gimp
## libgimp2.0-dev liblcms2-dev
#
# && tar xvzf 0.11.0.tar.gz && rm 0.11.0.tar.gz && cd highway-0.11.0 \
# && mkdir -p build && cd build && \
# cmake .. -DCMAKE_INSTALL_PREFIX=/usr \
#          -DCMAKE_CXX_FLAGS="-DHWY_COMPILE_ALL_ATTAINABLE" \
#          -DHWY_SYSTEM_GTEST=TRUE
# && checkinstall \
#    --pkgname=highway \
#    --pkgversion=0.11.0 \
#    --requires=libgtest-dev \
#    --provides=highway \
#    --nodoc \
#    -D \
#    --install=no \
#    --deldesc=yes \
#    --deldoc=yes \
#    --delspec=yes \
#    --maintainer="vsokolyk@gmail.com" \
#    -y \
## && cp *.deb /work/deb/
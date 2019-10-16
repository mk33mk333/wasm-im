export CFLAGS="-O3 -s BINARYEN_TRAP_MODE=clamp -s ALLOW_MEMORY_GROWTH=1 -s USE_PTHREADS=0"
export CXXFLAGS="-O3 -s BINARYEN_TRAP_MODE=clamp -s ALLOW_MEMORY_GROWTH=1 -s USE_PTHREADS=0"
# export PNG_LIBS="-L/code/libpng -L/code/libpng/.libs"

# 编译zlib
cd /wasm/zlib
emconfigure cmake .
emmake make

# 编译libpng
cd /wasm/libpng
emconfigure cmake . -DPNG_SHARED=OFF -DPNG_TESTS=OFF -DZLIB_INCLUDE_DIR=/wasm/zlib -DZLIB_LIBRARY=/wasm/zlib -DM_LIBRARY=/usr/lib/x86_64-linux-gnu
emmake make  

# 编译libjpeg
cd /wasm/libjpeg
emconfigure cmake . -DBUILD_STATIC=ON 
emmake make  


# 编译libwebp
cd /wasm/libwebp 
emconfigure cmake . -DWEBP_BUILD_WEBP_JS=ON -DZLIB_INCLUDE_DIR=/wasm/zlib -DZLIB_LIBRARY=/wasm/zlib -DPNG_LIBRARY=/wasm/libpng -DPNG_PNG_INCLUDE_DIR=/wasm/libpng -DJPEG_LIBRARY=/wasm/libjpeg -DJPEG_INCLUDE_DIR=/wasm/libjpeg
emmake make


# 编译ImageMagick

export CPPFLAGS="-I/wasm/libpng -I/wasm/zlib -I/wasm/libjpeg -I/wasm/libwebp/src"
export LDFLAGS="-L/wasm/zlib -L/wasm/libpng -L/wasm/libpng/.libs -L/wasm/libjpeg -L/wasm/libwebp"

cd /wasm/ImageMagick

autoreconf -fi

emconfigure ./configure --prefix=/ --disable-shared  --without-threads --without-magick-plus-plus --without-perl --without-x --disable-largefile --disable-openmp --without-bzlib --without-dps --without-freetype --without-jbig --without-openjp2 --without-lcms --without-wmf --without-xml --without-fftw --without-flif --without-fpx --without-djvu --without-fontconfig --without-raqm --without-gslib --without-gvc --without-heic --without-lqr --without-openexr --without-pango --without-raw --without-rsvg --without-xml PKG_CONFIG_PATH="/wasm/libpng:/wasm/zlib:/wasm/libjpeg:/wasm/libwebp/src:/wasm/libwebp/src/mux:/wasm/libwebp/src/demux:" 
emmake make 

/bin/bash ./libtool --tag=CC --mode=link emcc $CFLAGS $LDFLAGS -o /wasm/dist/wasm-im.js -s EXTRA_EXPORTED_RUNTIME_METHODS='["callMain"]' utilities/magick.o MagickCore/libMagickCore-7.Q16HDRI.la MagickWand/libMagickWand-7.Q16HDRI.la

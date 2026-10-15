#!/bin/bash

./download_dependencies.sh

meson setup build \
    --cross-file=$PS5_PAYLOAD_SDK/toolchain/prospero.ini \
    -Dplatforms= \
    -Dc_args=-Wno-thread-safety-analysis \
    -Dcpp_args=-Wno-thread-safety-analysis \
    -Dgallium-drivers=softpipe \
    -Dvulkan-drivers= \
    -Dopengl=true \
    -Degl=disabled \
    -Dgbm=disabled \
    -Dgles1=disabled \
    -Dgles2=disabled \
    -Dglx=disabled \
    -Dllvm=disabled \
    -Dzlib=disabled \
    -Dzstd=disabled \
    -Dshader-cache=disabled \
    -Dxmlconfig=disabled \
    -Dexpat=disabled \
    -Dlibunwind=disabled \
    -Dvalgrind=disabled \
    -Dvideo-codecs= \
    -Dbuild-tests=false \
    -Dtools= \
    -Dgallium-va=disabled \
    -Dgallium-rusticl=false

#!/bin/bash

rm -rf build/pkg

mkdir -p build/pkg/include
mkdir -p build/pkg/lib

cd build
for lib in `find -name '*.a'`;
    do ar -t $lib | xargs ar rvs $lib.new && mv -v $lib.new $lib;
done
cd ../

# Copy libs
cp build/src/util/blake3/libblake3.a build/pkg/lib/
cp build/src/c11/impl/libmesa_util_c11.a build/pkg/lib/
cp build/src/util/libmesa_util_simd.a build/pkg/lib/
cp build/src/util/libmesa_util.a build/pkg/lib/
cp build/src/compiler/libcompiler.a build/pkg/lib/
cp build/src/compiler/nir/libnir.a build/pkg/lib/
cp build/src/compiler/spirv/libvtn.a build/pkg/lib/
cp build/src/compiler/glsl/libglsl_util.a build/pkg/lib/
cp build/src/compiler/glsl/glcpp/libglcpp.a build/pkg/lib/
cp build/src/compiler/glsl/libglsl.a build/pkg/lib/
cp build/src/mesa/libmesa.a build/pkg/lib/
cp build/src/mesa/glapi/shared-glapi/libglapi.a build/pkg/lib/
cp build/src/mesa/glapi/glapi/libglapi_bridge.a build/pkg/lib/
cp build/src/gallium/auxiliary/libgallium.a build/pkg/lib/
cp build/src/gallium/drivers/softpipe/libsoftpipe.a build/pkg/lib/
cp build/src/util/libmesa_util_clflush.a build/pkg/lib/
cp build/src/util/libmesa_util_clflushopt.a build/pkg/lib/
cp build/src/mesa/libmesa_sse41.a build/pkg/lib

# Copy includes



#!/bin/sh

mkdir build
cd build

cmake -GNinja $RECIPE_DIR/../src \
      -DCMAKE_BUILD_TYPE=Release \
      -DBUILD_TESTING=OFF

cmake --build . --config Release
cmake --build . --config Release --target install

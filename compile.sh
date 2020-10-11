ROOT_DIR=$(pwd)
export PREFIX="$ROOT_DIR/bin"
export TARGET=x86_64-elf
export PATH="$PREFIX/bin:$PATH"

cd ./bin-int
mkdir build-binutils
cd build-binutils
../../source/binutils-2.35/configure --target=$TARGET --prefix="$PREFIX" --with-sysroot --disable-nls --disable-werror
make
make install

cd $ROOT_DIR

which -- $TARGET-as || echo $TARGET-as is not in the PATH

cd ./bin-int
mkdir build-gcc
cd build-gcc
../../source/gcc-10.2.0/configure --target=$TARGET --prefix="$PREFIX" --disable-nls --enable-languages=c,c++ --without-headers
make all-gcc
make all-target-libgcc
make install-gcc
make install-target-libgcc
export PREFIX="$(pwd)/bin"
export TARGET=x86_64-elf

cd ./bin-int
mkdir build-binutils
cd build-binutils
../../source/binutils-2.35/configure --target=$TARGET --prefix="$PREFIX" --with-sysroot --disable-nls --disable-werror
make
make install
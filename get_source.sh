curl -o ./source/binutils-2.35.tar.gz 'https://ftp.gnu.org/gnu/binutils/binutils-2.35.tar.gz'
curl -o ./source/gcc-10.2.0.tar.gz 'https://ftp.gnu.org/gnu/gcc/gcc-10.2.0/gcc-10.2.0.tar.gz'

tar -xvf ./source/binutils-2.35.tar.gz -C ./source/
tar -xvf ./source/gcc-10.2.0.tar.gz -C ./source/
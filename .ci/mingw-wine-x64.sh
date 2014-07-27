. "$CI_ROOT/mingw-patch.sh"
sudo apt-get install binutils-mingw-w64-x86-64 gcc-mingw-w64-x86-64 wine
export CI_CONFIGURE_OPTS=--host=x86_64-w64-mingw32
. "$CI_ROOT/build-test.sh"

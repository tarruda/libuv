. "$CI_ROOT/mingw-patch.sh"
sudo apt-get install wine mingw-w64
export CI_CONFIGURE_OPTS=--host=x86_64-w64-mingw32
. "$CI_ROOT/build-test.sh"

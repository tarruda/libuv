sudo apt-get install libc6-dev:i386 gcc-multilib
export CFLAGS=-m32
export LDFLAGS=-m32
export CI_CONFIGURE_OPTS=--host=i386-pc-linux-gnu
. "$CI_ROOT/build-test.sh"

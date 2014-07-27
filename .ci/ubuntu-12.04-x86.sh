# Pins the version of the java package installed on the Travis VMs
# and avoids a lengthy upgrade process for them.
sudo apt-mark hold oracle-java7-installer oracle-java8-installer
sudo apt-get update
sudo apt-get install libc6-dev:i386 gcc-multilib
export CFLAGS=-m32
export LDFLAGS=-m32
export CI_CONFIGURE_OPTS=--host=i386-pc-linux-gnu
. "$CI_ROOT/build-test.sh"

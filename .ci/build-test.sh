export CFLAGS="$CFLAGS -DDISABLE_NONDETERMINISTIC_TESTS"
sh autogen.sh
./configure
make
make check

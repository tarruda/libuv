export CFLAGS="$CFLAGS -DDISABLE_NONDETERMINISTIC_TESTS"
sh autogen.sh
./configure $CI_CONFIGURE_OPTS
make
make check

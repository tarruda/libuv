# Create a header with some definitions missing mingw-w64 2.0.1
# which is the version shipped with ubuntu 12.04
# ref: http://sourceforge.net/p/mingw-w64/mailman/mingw-w64-public/thread/20120923143935.5105c12a7166e2afeff98385@gmail.com/
cat > "src/win/missing.h" << "EOF"
#include <ntddndis.h>
#include <naptypes.h>
typedef int MIB_TCP_STATE;
EOF

# patch src/win/util.c to include the generated header after winsock2.h include
sed -i '/#include <winsock2.h>/a#include ".\/missing.h"' src/win/util.c

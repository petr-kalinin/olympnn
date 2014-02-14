#include "testlib.h"

int main(int argc, char * argv[])
{
    setName("compares two signed integers");
    registerTestlibCmd(argc, argv);
    
    long long ja = ans.readLong();
    long long pa = ouf.readLong();
    
    if (ja != pa) {
        quitf(_wa, "expected %s, found %s", vtos(ja).c_str(), vtos(pa).c_str());
    }
    quitf(_ok, "answer is %s", vtos(ja).c_str());
}

#include <fstream>
#include <algorithm>
#include <vector>
#include <queue>
#include <list>
#include <string>
#include <map>

using namespace std;

unsigned long pow(unsigned long x, int b, unsigned long m) {
    if (b==0) return 1;
    if (b % 2 == 1) {
        return (x*pow(x*x%m,b/2,m))%m;
    } else {
        return pow(x*x%m,b/2,m)%m;
    }
}

int main () {
    ifstream fin("powersum.in");
    ofstream fout("powersum.out");
    unsigned long n,m;
    int k;
    fin >> n >> m >> k;
    unsigned long ans = 0;
    for (long i=1 ; i<= n ; i++) {
        ans = (ans+pow(i,k,m))%m;
    }
    fout << ans;

    return 0;
}


#include <fstream>
#include <algorithm>
#include <vector>
#include <queue>
#include <list>
#include <string>
#include <map>


using namespace std;

int main () {
    ifstream fin("classics.in");
    ofstream fout("classics.out");

    long a,b,n,m;
    fin >> a >> b >> n >> m;

    long mina = a*(n-2) + 1;
    long maxa = a*n-1;

    long minb = b*(m-2)+ 1;
    long maxb = b*m - 1;

    long mn = max(mina,minb);
    long mx = min(maxa,maxb);

    if (mn > mx) {
        mn = 0;
        mx = 0;
    }

    fout << mn << " " << mx;

    return 0;
}

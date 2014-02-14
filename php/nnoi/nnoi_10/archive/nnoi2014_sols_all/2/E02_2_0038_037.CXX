#include <fstream>
#include <algorithm>
#include <vector>
#include <queue>
#include <list>
#include <string>
#include <map>


using namespace std;

int main () {
    ifstream fin("lottery.in");
    ofstream fout("lottery.out");

    long l,r,n;

    fin >> l >> r >> n;
    long ls;
    vector<long> t;

    fin >> ls;

    if (ls != l) {
        t.push_back(ls-1);
    }

    for (int i=1 ; i<n ; i++) {
        long x;
        fin >> x;

        if(ls != x-1) { // если они идут не подряд
            t.push_back(ls+1);
        }

        if (ls+1 != x-1 && ls != x-1) { // если между ними раздел более двух
                t.push_back(x-1);
        }

        ls = x;
    }

    if (r != ls) t.push_back(ls+1);

    fout << t.size() << endl;

    for (long i=0 ; i<t.size() ; i++) {
        fout << t[i] << ' ';
    }
    return 0;
}


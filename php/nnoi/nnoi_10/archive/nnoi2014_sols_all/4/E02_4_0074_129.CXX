#include <fstream>
#include <algorithm>
#include <vector>
#include <queue>
#include <list>
#include <string>
#include <map>

using namespace std;

int main () {
    ifstream fin("pots.in");
    ofstream fout("pots.out");
    int n,m;
    fin >> n >> m;


    int a[1001]; //a[r] - количество кастрюль с радиусом r
    int b[1001]; //b[r] - количество крышек с радиусом r
    for (int r=1000 ; r>=1 ; r--) { // обнуляем,а вдруг?
        a[r] = 0;
        b[r] = 0;
    }
    for (int i=0 ; i<n ; i++) {
        int r;
        fin >> r;
        a[r]++;
    }
    for (int i=0 ; i<m ; i++) {
        int r;
        fin >> r;
        b[r]++;
    }
    int ans = 0;
    for (int r=1000 ; r>=1 ; r--) { // перебираем все крышки
        for (int rk=r ; rk>=1 && b[r] > 0; rk--) {
            if (a[rk] <= b[r]) {
                b[r] -= a[rk];
                ans += a[rk];
                a[rk] = 0;
            } else {
                a[rk] -= b[r];
                ans += b[r];
                b[r] = 0;
            }
        }
    }
    fout << ans;
    return 0;
}

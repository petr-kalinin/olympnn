// Белова Татьяна, 10 класс, школа №187, задача 4, GNU C++ 4.7.1

#include <iostream>
#include <cstdio>
#include <cmath>
#include <algorithm>
#include <vector>
#include <string>
#include <cstring>
#include <cassert>
#include <ctime>

using namespace std;

typedef long long ll;
typedef long double ld;

#define FILENAME "pots"

int a[2000], b[2000];

int main()
{
    freopen(FILENAME ".in", "r", stdin);
    freopen(FILENAME ".out", "w", stdout);

    int n, m;
    cin >> n >> m;
    for (int i = 0; i < n; ++i) {
        cin >> a[i];
    }
    for (int i = 0; i < m; ++i) {
        cin >> b[i];
    }
    sort(a, a + n);
    sort(b, b + m);
    b[m] = 10000;

    int j = 0;
    int ans = 0;
    for (int i = 0; (i < n) && (j < m); ++i) {
        while (b[j] < a[i]) {
            ++j;
        }
        if (j < m) {
            ++ans;
            ++j;
        }
    }
    cout << ans << endl;

    return 0;
}

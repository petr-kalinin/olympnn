// Белова Татьяна, 10 класс, школа №187, задача 1, GNU C++ 4.7.1
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

#define FILENAME "classics"

int main()
{
    freopen(FILENAME ".in", "r", stdin);
    freopen(FILENAME ".out", "w", stdout);

    ll a, b, n, m;
    cin >> a >> b >> n >> m;
    ll maxa = n * a - 1, maxb = m * b - 1, mina = (n - 2) * a + 1, minb = (m - 2) * b + 1;
    ll ans_min = max(mina, minb), ans_max = min(maxa, maxb);

    if (ans_min <= ans_max) {
        cout << ans_min << ' ' << ans_max << endl;
    } else {
        cout << "0 0\n";
    }

    return 0;
}


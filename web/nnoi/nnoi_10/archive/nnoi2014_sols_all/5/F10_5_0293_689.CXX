// Белова Татьяна, 10 класс, школа №187, задача 5, GNU C++ 4.7.1

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

#define FILENAME "powersum"

int main()
{
    freopen(FILENAME ".in", "r", stdin);
    freopen(FILENAME ".out", "w", stdout);

    int n, m, k;
    cin >> n >> m >> k;
    ll ans = 0;

    if (n > 100000 && m <= 500000) {
        int num = n / m;
        for (int i = 0; i < m; ++i) {
            int v = 1;
            for (int j = 0; j < k; ++j) {
                v *= i;
                v %= m;
            }
            ans += (v * num) % m;
            if (i <= n - n * num && i != 0) {
                ans += v;
            }
            ans %= m;
        }
        cout << ans << endl;
        return 0;
    }

    for (int i = 1; i <= n; ++i) {
        ll v = 1;
        for (int j = 0; j < k; ++j) {
            v *= i;
            v %= m;
        }
        ans += v;
        ans %= m;
    }
    cout << ans << endl;

    return 0;
}

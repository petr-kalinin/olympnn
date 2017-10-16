//Фадеева Екатерина, 7 класс, МБОУ Лицей № 40, Нижний Новгород
#include <iostream>
#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <cmath>
#include <sstream>
#include <algorithm>
#include <vector>
#include <deque>
using namespace std;
int main() {
    freopen("pots.in", "r", stdin);
    freopen("pots.out", "w", stdout);
    int n, m;
    cin >> n >> m;
    int a[1001], b[1001];
    for (int i = 0; i < n; i++) cin >> a[i];
    for (int i = 0; i < m; i++) cin >> b[i];
    sort(a, a + n);
    sort(b, b + m);
    int u1 = 0, u2 = 0, ans = 0;
    while (u1 < n && u2 < m) {
        if (a[u1] <= b[u2]) {
            ans++;
            u1++;
            u2++;
        }
        else u2++;
    }
    cout << ans;
    return 0;
}

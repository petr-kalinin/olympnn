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
long long pow1(int a, int b, int m) {
    long long ans = 1;
    for (int i = 1; i <= b; i++) ans = ans * a % m;
    return ans;
}
int main() {
    freopen("powersum.in", "r", stdin);
    freopen("powersum.out", "w", stdout);
    int n, m, k;
    cin >> n >> m >> k;
    int a = (n / m) % m;
    long long ans = 0;
    for (int i = 1; i < m; i++) {
        long long num = a * pow1(i, k, m);
        ans = (ans + num) % m;
    }
    for (int i = a * m; i <= n; i++) ans = (ans + pow1(i, k, m)) % m;
    cout << ans;
    return 0;
}

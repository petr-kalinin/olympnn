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
vector <int> ans;
int main() {
    freopen("lottery.in", "r", stdin);
    freopen("lottery.out", "w", stdout);
    int l, r, n, a[100001];
    cin >> l >> r >> n;
    for (int i = 0; i < n; i++) cin >> a[i];
    if (a[0] > l) ans.push_back(a[0] - 1);
    if (a[1] != a[0] + 1) ans.push_back(a[0] + 1);
    for (int i = 1; i < n - 1; i++) {
        if (a[i] != a[i - 1] + 1 && a[i] - 1 >= l) ans.push_back(a[i] - 1);
        if (a[i] != a[i + 1] - 1 && a[i] + 1 <= r) ans.push_back(a[i] + 1);
    }
    if (a[n - 1] != a[n - 2] + 1) ans.push_back(a[n - 1] - 1);
    if (a[n - 1] < r) ans.push_back(a[n - 1] + 1);
    cout << ans.size() << endl;
    for (unsigned int i = 0; i < ans.size(); i++) cout << ans[i] << " ";
    return 0;
}

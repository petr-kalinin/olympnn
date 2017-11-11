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
int func(string s) {
    int h = 0, m = 0;
    unsigned int i;
    for (i = 0; i < s.length() && s[i] != ':'; i++) h = h * 10 + int(s[i]) - 48;
    for (i = i; i < s.length(); i++) m = m * 10 + int(s[i]) - 48;
    return h * 60 + m;
}
struct el {
    int s, f;
    string s1;
    long long k;
    int t1;
    int type;
};
bool compare(el a, el b) {
    if (a.t1 == b.t1) return a.type == -1;
    return a.t1 < b.t1;
}
vector <el> mas;
int main() {
    freopen("trains.in", "r", stdin);
    freopen("trains.out", "w", stdout);
    int n, m;
    cin >> n >> m;
    for (int i = 0; i < m; i++) {
        el x;
        cin >> x.s >> x.f >> x.k;
        string s1, s2;
        cin >> s1 >> s2;
        int t1 = func(s1), t2 = func(s2);
        if (t1 >= t2) t2 += 24 * 60;
        x.t1 = t1;
        x.s1 = s1;
        x.type = 1;
        mas.push_back(x);
        x.s1 = s2;
        x.t1 = t2;
        x.type = -1;
        mas.push_back(x);
    }
    sort(mas.begin(), mas.end(), compare);
    long long v[100010], ans = 0;
    for (int i = 1; i <= n; i++) v[i] = 0;
    for (unsigned int i = 0; i < mas.size(); i++) {
        if (mas[i].type == -1) v[mas[i].f] += mas[i].k;
        else {
            if (v[mas[i].s] < mas[i].k) {
                ans += mas[i].k - v[mas[i].s];
                v[mas[i].s] = mas[i].k;
            }
            v[mas[i].s] -= mas[i].k;
        }
    }
    cout << ans;
    return 0;
}
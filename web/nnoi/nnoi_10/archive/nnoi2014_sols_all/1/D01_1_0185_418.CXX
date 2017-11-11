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
long long maxim(long long a, long long b, long long c) {
    long long ans = a;
    if (ans < b) ans = b;
    if (ans < c) ans = c;
    return ans;
}
long long minim(long long a, long long b, long long c) {
    long long ans = a;
    if (ans > b) ans = b;
    if (ans > c) ans = c;
    return ans;
}
int main() {
    freopen("classics.in", "r", stdin);
    freopen("classics.out", "w", stdout);
    long long a, b, n, m;
    cin >> a >> b >> n >> m;
    long long maximum = minim(a*n-1, b*m-1, 1000000000000000000), minimum = maxim(a*n-2*a+1, b*m-2*b+1, 0);
    if (maximum < minimum) maximum = minimum = 0;
    cout << minimum << " " << maximum << endl;
    return 0;
}


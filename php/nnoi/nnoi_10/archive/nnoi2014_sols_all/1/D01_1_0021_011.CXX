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
    freopen("classics.in", "r", stdin);
    freopen("classics.out", "w", stdout);
    int a, b, n, m;
    cin >> a >> b >> n >> m;
    long long maximum = min(a*n-1, b*m-1), minimum = max(a*n-2*a+1, b*m-2*b+1);
    if (maximum < minimum) maximum = minimum = 0;
    cout << minimum << " " << maximum << endl;
    return 0;
}

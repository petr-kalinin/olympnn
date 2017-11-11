// Белова Татьяна, 10 класс, школа №187, задача 2, GNU C++ 4.7.1

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

#define FILENAME "lottery"

int a[200000];
vector<int> v;

int main()
{
    freopen(FILENAME ".in", "r", stdin);
    freopen(FILENAME ".out", "w", stdout);

    int l, r, n;
    scanf("%d%d%d", &l, &r, &n);
    for (int i = 0; i < n; ++i) {
        scanf("%d", &a[i]);
    }
    int k = 0;
    for (int i = 0; i < n; ++i) {
        if (a[i] > l) {
            if (i == 0 || a[i - 1] < a[i] - 1) {
                if (k == 0 || v[k - 1] != a[i] - 1) {
                    v.push_back(a[i] - 1);
                    k++;
                }
            }
        }
        if (a[i] < r) {
            if (i == n - 1 || a[i + 1] > a[i] + 1) {
                v.push_back(a[i] + 1);
                k++;
            }
        }
    }
    printf("%d\n", k);
    for (int i = 0; i < k; ++i) {
        printf("%d ", v[i]);
    }
    printf("\n");

    return 0;
}


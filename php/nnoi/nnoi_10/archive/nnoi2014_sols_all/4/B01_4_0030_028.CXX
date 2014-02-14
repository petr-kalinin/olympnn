//Nikolay Kalinin, 11 class, Liceum 40, problem 4, GNU C++
#include <iostream>
#include <cstdio>
#include <cmath>
#include <cstdlib>
#include <vector>
#include <algorithm>
#include <string>
#include <cstring>
#include <ctime>

using namespace std;

typedef long double ld;
typedef long long ll;

#define FILENAME "pots"

const int maxn = 1005;

int a[maxn], b[maxn];
bool used[maxn];
int n, m;

int main()
{
	freopen(FILENAME ".in", "r", stdin);
	freopen(FILENAME ".out", "w", stdout);
	scanf("%d%d", &n, &m);
	for (int i = 0; i < n; i++) scanf("%d", &a[i]);
	for (int i = 0; i < m; i++) scanf("%d", &b[i]);
    sort(a, a + n);
    sort(b, b + m);
    for (int i = 0; i < n; i++) used[i] = false;
    int ans = 0;
    for (int i = m - 1; i >= 0; i--)
    {
        for (int j = n - 1; j >= 0; j--) if (a[j] <= b[i] && !used[j])
        {
            used[j] = true;
            ans++;
            break;
        }
    }
    cout << ans << endl;
	return 0;
}

//Nikolay Kalinin, 11 class, Liceum 40, problem 5, GNU C++
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

#define FILENAME "powersum"

const int BS = 100000;
const int maxk = 30;

int n, m, k;

ll c[maxk][maxk];
ll sum[maxk];

inline ll powmod(ll a, ll b)
{
    ll ans = 1;
    for (int i = 0; i < b; i++) ans = (ans * a) % m;
    return ans;
}

int main()
{
	freopen(FILENAME ".in", "r", stdin);
	freopen(FILENAME ".out", "w", stdout);
	cin >> n >> m >> k;
    for (int i = 0; i <= k; i++)
    {
        sum[i] = 0;
        for (int j = 1; j <= BS; j++) sum[i] = (sum[i] + powmod(j, i)) % m;
    }
    c[0][0] = 1 % m;
    for (int i = 1; i <= k; i++)
    {
        c[i][0] = 1;
        for (int j = 1; j <= i; j++) c[i][j] = (c[i - 1][j - 1] + c[i - 1][j]) % m;
    }
    ll answer = 0;
    ll start;
    for (start = 0; start + BS <= n; start += BS)
    {
        for (int i = 0; i <= k; i++)
        {
            ll t = (powmod(start, k - i) * sum[i]) % m;
            answer = (answer + c[k][i] * t) % m;
//            cout << i << ' ' << answer << endl;
        }
//        cout << answer << endl;
    }
    for (ll x = start + 1; x <= n; x++) answer = (answer + powmod(x, k)) % m;
    cout << answer << endl;
	return 0;
}

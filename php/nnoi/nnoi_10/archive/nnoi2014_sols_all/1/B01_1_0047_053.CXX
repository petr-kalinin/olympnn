//Nikolay Kalinin, 11 class, Liceum 40, problem 1, GNU C++
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

#define FILENAME "classics"

const ll inf = 1e18 + 5;

ll A, B, N, M;

int main()
{
	freopen(FILENAME ".in", "r", stdin);
	freopen(FILENAME ".out", "w", stdout);
	cin >> A >> B >> N >> M;
    ll ansl = 1;
    ll ansr = inf;
    ansl = max(ansl, (N - 2) * A + 1);
    ansl = max(ansl, (M - 2) * B + 1);
    ansr = min(ansr, N * A - 1);
    ansr = min(ansr, M * B - 1);
    if (ansl <= ansr) cout << ansl << ' ' << ansr << endl;
    else cout << 0 << ' ' << 0 << endl;
	return 0;
}

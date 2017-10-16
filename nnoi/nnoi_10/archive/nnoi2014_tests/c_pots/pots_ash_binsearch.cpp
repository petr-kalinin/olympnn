#include <iostream>
#include <cstring>
#include <algorithm>

#define re return
#define rep(i, n) for (int i = 0; i < (n); i++)

using namespace std;

const int MAXM = 1000;
const int MAXN = 1000;

int n, m;
int a[MAXN], b[MAXM];

int check(int k) {
	int res = 1;
	reverse(b, b + k);
	rep(i, k)
		if (b[i] < a[i])
			res = 0;
	reverse(b, b + k);
	re res;
}

int main() {
	freopen("pots.in", "r", stdin);
	freopen("pots.out", "w", stdout);

	cin >> n >> m;
	rep(i, n)
		cin >> a[i];
	rep(i, m)
		cin >> b[i];
	sort(a, a + n);
	sort(b, b + m);
	reverse(b, b + m);

	int ans = 0;
	int l = 1, r = min(n, m);
	while (l <= r) {
		int c = (l + r) / 2;
		if (check(c)) {
			ans = c;
			l = c + 1;
		}
		else
			r = c - 1;
	}
	cout << ans << endl;

	re 0;
}


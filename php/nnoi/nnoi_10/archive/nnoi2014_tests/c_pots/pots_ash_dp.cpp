#include <iostream>
#include <cstring>
#include <algorithm>

#define re return
#define rep(i, n) for (int i = 0; i < (n); i++)
#define fill(x, y) memset(x, y, sizeof(x))

using namespace std;

const int MAXM = 1000;
const int MAXN = 1000;

int n, m;

int a[MAXN], b[MAXM];
int table[MAXN][MAXM];

int getans(int p1, int p2) {
	if (p1 >= n || p2 >= m)
		re 0;
	int &ans = table[p1][p2];
	if (ans != -1)
		re ans;
	ans = max(getans(p1 + 1, p2), getans(p1, p2 + 1));
	if (b[p2] >= a[p1])
		ans = max(ans, 1 + getans(p1 + 1, p2 + 1));
	re ans;
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

	fill(table, -1);
	cout << getans(0, 0) << endl;

	re 0;
}


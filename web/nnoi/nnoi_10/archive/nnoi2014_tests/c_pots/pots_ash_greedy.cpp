#include <iostream>
#include <cstring>
#include <algorithm>
#include <set>

#define re return
#define rep(i, n) for (int i = 0; i < (n); i++)

using namespace std;

const int MAXM = 1000;
const int MAXN = 1000;

int n, m;
int a[MAXN], b[MAXM];
multiset<int> s;

int main() {
	freopen("pots.in", "r", stdin);
	freopen("pots.out", "w", stdout);

	cin >> n >> m;
	rep(i, n)
		cin >> a[i];
	rep(i, m) {
		cin >> b[i];
		s.insert(b[i]);
	}
	sort(a, a + n);
	rep(i, n)
		if (s.lower_bound(a[i]) != s.end())
			s.erase(s.lower_bound(a[i]));
	cout << m - (int)s.size() << endl;

	re 0;
}


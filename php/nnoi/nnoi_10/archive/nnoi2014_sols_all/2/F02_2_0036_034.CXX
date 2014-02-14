/* Вилков Кирилл   f02 */

#include <iostream>
#include <set>
#include <vector>
#include <list>
#include <algorithm>
#include <stack>
#include <queue>
#include <deque>

using namespace std;

int main () {


	int L, R, n;
	cin >> L >> R >> n;

	vector<int> cert;

	for (int i = 0; i < n; ++i) {
		int c;
		cin >> c;
		cert.push_back(c);
	}

	vector<int> res;

	if (cert[0] != L) {
		res.push_back(cert[0] - 1);
	}

	for (int i = 0; i < n - 1; ++i) {
		if (cert[i] + 1 != cert[i + 1]) {
			res.push_back(cert[i] + 1);
			res.push_back(cert[i + 1] - 1);
		}
	}

	if (cert[n - 1] != R) res.push_back(cert[n - 1] + 1);

	cout << res.size() << '\n';
	for (vector<int>::iterator it = res.begin();
		it != res.end(); ++it) {
		cout << *it << ' ';
	}

	return 0;

}


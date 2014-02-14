/* Вилков Кирилл   f02 */

#include <iostream>
#include <set>
#include <vector>
#include <list>
#include <algorithm>
#include <stack>
#include <queue>
#include <deque>
#include <fstream>

using namespace std;

int main () {
	
	ifstream in("lottery.in");
	ofstream out("lottery.out");
	
	unsigned long long L, R, n;
	in >> L >> R >> n;

	vector<unsigned long long> res;

	int last = -1;
	for (int i = 0; i < n; ++i) {
		int c;
		in >> c;

		if (i == 0) {
			if (c != L) res.push_back(c - 1);
		} else {
			if (last + 1 != c) {
				res.push_back(last + 1);
				res.push_back(c - 1);
			}
		}
		if (i == n - 1 && c != R) {
			res.push_back(c + 1);
		}

		last = c;
	}

	out << res.size() << '\n';
	for (vector<unsigned long long>::iterator it = res.begin();
		it != res.end(); ++it) {
		out << *it << ' ';
	}
	

	return 0;

}


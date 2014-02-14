/* Вилков Кирилл   f02 */
/* Задача 4 */

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

	ifstream in("pots.in");
	ofstream out("pots.out");

	int n, m;
	in >> n >> m;

	list<int> a, b;

	for (int i = 0; i < n; ++i) {
		int r;
		in >> r;
		a.push_back(r);
	}

	for (int i = 0; i < m; ++i) {
		int r;
		in >> r;
		b.push_back(r);
	}

	a.sort();
	b.sort();

	list<int>::iterator ia = a.end();

	int res = 0;

	for (;;) {
		--ia;

		list<int>::iterator ib = b.end();
		list<int>::iterator lb = ib;
		for (;;) {
			--ib;

			if (*ib < *ia) {
				if (lb == b.end()) {
					break;
				} else {
					b.erase(lb);
					++res;
					break;
				}
			}

			lb = ib;
			if (ib == b.begin()) { // последняя крышка
				if (*ib >= *ia) {
					b.erase(ib);
					++res;
				}
				break;
			}
		}

		if (ia == a.begin()) break;

	}

	out << res;


	return 0;

}


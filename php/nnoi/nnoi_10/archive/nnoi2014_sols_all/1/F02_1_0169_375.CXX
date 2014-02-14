/* Вилков Кирилл f02 */
/* Задача 1 */

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
	
	ifstream in("classics.in");
	ofstream out("classics.out");
	/*
	istream& in = cin;
	ostream& out = cout;*/

	unsigned long long a, b, m, n;
	in >> a >> b >> n >> m;

	unsigned long long mn, mx;

	if (n > 1 && m > 1) {
	mn = (n - 2) * a + 1;
	mx = (n - 2) * a + a + (a - 1);

	
	
	mn = max(mn, (m - 2) * b + 1);
	mx = min(mx, (m - 2) * b + b + (b - 1));
	} else {
		mn = 0;
		mx = 0;
	}
	
	if (mx < mn) 
		out << "0 0";
	else
		out << mn << " " << mx;

	return 0;

}


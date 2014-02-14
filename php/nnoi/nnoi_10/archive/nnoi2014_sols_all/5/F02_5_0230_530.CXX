/* Вилков Кирилл f02 */
/* Задача 5 */

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
	
	ifstream in("powersum.in");
	ofstream out("powersum.in");
	
	/*
	istream& in = cin;
	ostream& out = cout;
	*/
	
	unsigned long long n, m, k;
	in >> n >> m >> k;
	
	
	
	unsigned long long res = 0;

	
	if (n > m) {

		int psum = 0;
		for (unsigned long long i = 1; i < m && i <= n; ++i) {
			int pw = 1;
			for (int ik = 1; ik <= k; ++ik) {
				pw *= i % m;
				pw = pw % m;
			}
			psum += pw;
			psum = psum % m;
		}

		
		
		unsigned long long ct = n / m;
		res = (ct * psum) % m;
		for (unsigned long long i = ct * m + 1; i <= n; ++i) {
			int pw = 1;
			for (int ik = 1; ik <= k; ++ik) {
				pw *= i % m;
				pw = pw % m;
			}
			res += pw;
			res = res % m;
		}
	} else {
		for (unsigned long long i = 1; i <= n; ++i) {
			int pw = 1;
			for (int ik = 1; ik <= k; ++ik) {
				pw *= i % m;
				pw = pw % m;
			}
			res += pw;
			res = res % m;
		}
	}
	

	out << res;

	//out << "\n\n"; system("PAUSE");
	return 0;

}


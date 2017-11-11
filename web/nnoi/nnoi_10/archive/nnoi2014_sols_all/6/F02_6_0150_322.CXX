/* Вилков Кирилл f02 */
/* Задача 6 */

#include <iostream>
#include <set>
#include <vector>
#include <list>
#include <algorithm>
#include <stack>
#include <queue>
#include <deque>
#include <string>
#include <fstream>


using namespace std;

struct T {
	int time; // время
	int delta; // изменение количества вагонов
	T(int time, int delta) : time(time), delta(delta) {}
};

bool sortFunc(T x, T y) { 
	if (x.time == y.time) {
		return x.delta > y.delta;
	} else {
		return x.time < y.time;
	}
}

int main () {
	/*
	istream& in = cin;
	ostream& out = cout;

	*/
	
	ifstream in("trains.in");
	ofstream out("trains.out");
	
	
	int n, m;
	in >> n >> m;

	list<T>** arr = new list<T>*[n];
	for (int i = 0; i < n; ++i) arr[i] = new list<T>;

	for (int i = 0; i < m; ++i) {
		int s, e, g;
		in >> s >> e >> g;
		
		s -= 1;
		e -= 1;

		int st, et;
		string str;
		in >> str;
		st = ((str[0] - 48) * 10 + (str[1] - 48)) * 60 + (str[3] - 48) * 10 + (str[4] - 48);
		in >> str;
		et = ((str[0] - 48) * 10 + (str[1] - 48)) * 60 + (str[3] - 48) * 10 + (str[4] - 48);

		if (et < st) et += 24 * 60;

		arr[s]->push_back(T(st, -g));
		arr[e]->push_back(T(et, g));

	}

	int res = 0;
	for (int i = 0; i < n; ++i) {
		arr[i]->sort(sortFunc);
		int g = 0;
		for (list<T>::iterator it = arr[i]->begin(); it != arr[i]->end(); ++it) {
			g += it->delta;
			if (g < 0) {
				res += -g;
				g = 0;
			}
		}
	}

	out << res;


	//out << "\n\n"; system("PAUSE");	
	return 0;

}


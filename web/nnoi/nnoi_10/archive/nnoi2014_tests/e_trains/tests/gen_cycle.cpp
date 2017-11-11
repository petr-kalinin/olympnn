#include "testlib.h"
#include <iostream>
#include <fstream>
#include <algorithm>
#include <string>

using namespace std;

vector<int> generatePartition(int trains, int stations) {
	ensuref(trains > 2, "There should be at least two trains");
	vector<int> p;
	p.push_back(2);
	trains -= 2;
	while (trains > 0) {
		if (rnd.next() < 0.2 && trains >= 2) {
			p.push_back(2);
			trains -= 2;
		} else {
			int i = rnd.next((int) p.size());
			if (p[i] + 1 <= stations) {
				p[i] += 1;
				trains -= 1;
			}
		}
	}
	return p;
}

vector<int> generateCycle(int stations, int length) {
	vector<int> p;
	for (int i = 0; i < stations; i ++) {
		p.push_back(i);
	}
	shuffle(p.begin(), p.end());
	p.resize(length);
	return p;
}

string itos(int s) {
	string result = "";
	if (s == 0) {
		return "0";
	}
	while (s > 0) {
		result += s % 10 + '0';
		s /= 10;
	}
	reverse(result.begin(), result.end());
	return result;
}

string makelonger(string s, int len) {
	string res;
	for (int i = 0; i < len - (int)s.size(); i ++) {
		res += '0';
	}
	res += s;
	return res;
}

string generateTime() {
	int hours = rnd.next(24);
	int minutes = rnd.next(60);
	return makelonger(itos(hours), 2) + ":" + makelonger(itos(minutes), 2);
}

void writeCycle(const vector<int>& cycle, int wpt) {
	int wagons = rnd.next(1, wpt);
	for (int i = 0; i < cycle.size(); i ++) {
		int j = (i + 1) % cycle.size();
		string t1, t2;
		while (t1 == t2) {
			t1 = generateTime();
			t2 = generateTime();
		}
		cout << i + 1 << " " << j + 1 << " " << wagons << " " << t1 << " " << t2 << endl;
	}
}

int main(int argc, char* argv[]) {
	registerGen(argc, argv);

	if (argc < 4) {
		fprintf(stderr, "Usage: %s stations trains max_wagons_per_train\n", argv[0]);
		return 1;
	}

	int stations = atoi(argv[1]);
	int trains = atoi(argv[2]);
	int wpt = atoi(argv[3]);

	cout << stations << " " << trains << endl;
	vector<int> a = generatePartition(trains, stations);
	for (int i = 0; i < a.size(); i ++) {
		writeCycle(generateCycle(stations, a[i]), wpt);
	}
	return 0;
}
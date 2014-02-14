#include "testlib.h"
#include <iostream>
#include <fstream>
#include <string>
#include <algorithm>
#include <cmath>
#include <cstdlib>

using namespace std;

string genTime() {
	int hours = rnd.next(23);
	int minutes = rnd.next(60);
	char s[10];
	sprintf(s, "%02d:%02d", hours, minutes);
	return (string) s;
}

string genTimeSet() {
	string t1, t2;
	while (t1 == t2) {
		t1 = genTime();
		t2 = genTime();
	}
	return t1 + " " + t2;
}

vector<string> trains;

int delta(int _old, int _new) {
	if (_old == 0 && _new != 0) {
		return 1;
	} 
	if (_old != 0 && _new == 0) {
		return -1;
	}
	return 0;
}

bool check(int balance, int wpt) {
	return abs(balance) <= wpt && balance != 0;
}

string generate(int stations, int trains, int wpt) {
	stringstream sin;

	sin << stations << " " << trains << endl;

	vector<int> balance(stations);

	int nonZeroBalanceStations = 0;

	int trainsLeft = trains;

	while (trainsLeft + 1 > nonZeroBalanceStations) {
		int from = rnd.next(stations);
		int to = rnd.next(stations);
		if (from == to) continue;
		int wagons = rnd.next(1, wpt);
		if (abs(balance[from] - wagons) > wpt) {
			continue;
		}
		if (abs(balance[to] + wagons) > wpt) {
			continue;
		}
		int newNonZeroBalance = nonZeroBalanceStations + delta(balance[from], balance[from] - wagons) + delta(balance[to], balance[to] + wagons);
		if ((trainsLeft - 1) + 1 < newNonZeroBalance) {
			continue;
		}
		nonZeroBalanceStations = newNonZeroBalance;
		balance[from] -= wagons;
		balance[to] += wagons;
		trainsLeft --;
		sin << from + 1 << " " << to + 1 << " " << wagons << " " << genTimeSet() << endl;
	}

	vector<int> nonzero;

	for (int i = 0; i < stations; i ++) {
		if (balance[i] != 0) {
			nonzero.push_back(i);
		}
	}

	shuffle(nonzero.begin(), nonzero.end());

	int fails = 0;
	const int MAX_FAILS = 1e5;

	ensuref(nonzero.size() == trainsLeft + 1, "Reporting a bug.");
	for (int i = (int) nonzero.size() - 1; i > 0; i --) {
		int I = nonzero[i];
		int j = rnd.next(i);
		int J = nonzero[j];
		int from = I;
		int to = J;
		int wagons = abs(balance[I]);
		if (balance[I] < 0) {
			swap(from, to);
		} 
		if (!check(balance[I] + balance[J], wpt) && i != 1) {
			i ++;
			fails ++;
			if (fails > MAX_FAILS) {
				return "";
			}
			continue;
		}
		balance[J] += balance[I];
		balance[I] = 0;
		sin << from + 1 << " " << to + 1 << " " << wagons << " " << genTimeSet() << endl;
	}
	return sin.str();
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

	string result;

	while (result == "") {
		result = generate(stations, trains, wpt);
	}
	cout << result;
	return 0;
}
#include "testlib.h"
#include <iostream>
#include <fstream>

using namespace std;

const int MAX_STATIONS = 1e5;
const int MAX_TRAINS = 1e5;

const int MAX_WAGONS_PER_TRAIN = 1e5;

int stationCount;

int strtotime(const string& s) {
	ensuref(s.size()==5, "Time string should have length exactly 5 symbols");
	int hours = (s[0] - '0') * 10 + s[1] - '0';
	int minutes = (s[3] - '0') * 10 + s[4] - '0';
	ensuref(0 <= hours && hours < 24, "Hours should be between 0 and 23");
	ensuref(0 <= minutes && minutes < 60, "Minutes should be between 0 and 59");
	return hours * 60 + minutes;
}

int main(int argc, char* argv[]) {
	if (argc == 1) {
		registerValidation();
	} else {
		__testlib_ensuresPreconditions();

    	testlibMode = _validator;
    	inf.init(argv[1], _input);
    	inf.strict = true;
	}

	stationCount = inf.readInt(1, MAX_STATIONS);
	inf.readSpace();
	int trainCount = inf.readInt(1, MAX_TRAINS);
	inf.readEoln();

	vector<long long> balance(stationCount);

	for (int i = 0; i < trainCount; i ++) {
		int from = inf.readInt(1, stationCount) - 1;
		inf.readSpace();
		int to = inf.readInt(1, stationCount) - 1;
		ensuref(from != to, "Departure and arrival stations should be distinct");
		inf.readSpace();
		int wagons = inf.readInt(1, MAX_WAGONS_PER_TRAIN);
		inf.readSpace();
		int departure = strtotime(inf.readToken("[0-9][0-9]:[0-9][0-9]"));
		inf.readSpace();
		int arrival = strtotime(inf.readToken("[0-9][0-9]:[0-9][0-9]"));
		ensuref(departure != arrival, "Departure and arrival times should be distinct");
		balance[from] -= wagons;
		balance[to] += wagons;
		inf.readEoln();
	}
	for (int i = 0; i < stationCount; i ++) {
		ensuref(balance[i] == 0, "Balance should be zero");
	}
	inf.readEof();
	return 0;
}
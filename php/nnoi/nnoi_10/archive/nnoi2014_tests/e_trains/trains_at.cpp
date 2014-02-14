#include <iostream>
#include <fstream>
#include <vector>
#include <algorithm>
#include <cstdlib>
#include <cmath>

using namespace std;

struct Train {
	int from;
	int to;
	int departure;
	int arrival;
	int size;
};

int strtotime(const std::string& time) {
	int hours = (time[0] - '0') * 10 + time[1] - '0';
	int minutes = (time[3] - '0') * 10 + time[4] - '0';
	return 60 * hours + minutes;
}

istream& operator >>(istream& in, Train& train) {
	string departure;
	string arrival;
	in >> train.from >> train.to >> train.size >> departure >> arrival;
	train.from --;
	train.to --;
	train.departure = strtotime(departure);
	train.arrival = strtotime(arrival);
	return in;
}

long long wagons = 0;

int main() {
	freopen("trains.in", "r", stdin);
	freopen("trains.out", "w", stdout);

	int stationCount, trainCount;
	cin >> stationCount >> trainCount;
	vector<Train> trains;
	for (int i = 0; i < trainCount; i ++) {
		Train train;
		cin >> train;
		trains.push_back(train);
	}
	vector<long long> wagonsAtStations(stationCount+1);
	vector<long long> wagonsInTrains(trainCount);
	int TIME = 24 * 60;
	vector< vector<int> > departures(TIME);
	vector< vector<int> > arrivals(TIME);
	for (int i = 0; i < trains.size(); i ++) {
		if (trains[i].departure > trains[i].arrival) {
			wagons += trains[i].size;
		}
		arrivals[trains[i].arrival].push_back(i);
		departures[trains[i].departure].push_back(i);
	}
	for (int t = 0; t < TIME; t ++) {
		for (int i = 0; i < arrivals[t].size(); i ++) {
			int train = arrivals[t][i];
			wagonsAtStations[trains[train].to] += trains[train].size;
		}
		for (int i = 0; i < departures[t].size(); i ++) {
			int train = departures[t][i];
			int departureStation = trains[train].from;
			wagonsAtStations[departureStation] -= trains[train].size;
			if (wagonsAtStations[departureStation] < 0) {
				wagons -= wagonsAtStations[departureStation];
				wagonsAtStations[departureStation] = 0;
			}
		}
	}
	cout << wagons << endl;
	return 0; 
}
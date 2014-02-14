#include <iostream>
#include <algorithm>
#include <vector>
#include <set>
using namespace std;
vector<int> data;
const int MAX_N = 100 * 1000;
const int MAX_V = 1000 * 1000 * 1000;
set<int> used;

// stupid random number generator
unsigned int rnd(int l, int r)
{
	int m = (r - l);
	unsigned int tmp = rand() * rand() * rand() + rand() * rand () + rand();
	tmp %= (m + 1);
	return l + tmp;
}

int main(int argc, char** argv)
{
	srand(atoi(argv[1]));
	int l = atoi(argv[1]);
	int r = atoi(argv[2]);
	int n = atoi(argv[3]);
	cout << l << " " << r << " " << MAX_N << endl;
	int s = rnd(1, MAX_N) + l;
	for (int i = s; i < s + MAX_N; ++i )
		cout << i << " ";
	cout << endl;
}
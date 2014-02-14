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
	cout << l << " " << r << " " << n << endl;
	if (r - l + 1 < n)
	{
		cout << "Too big N" << endl;
		return 1;
	}
	if (rand() % 2) // sometimes add borders 
	{
		used.insert(l);
		--n;
	}
	if (rand() % 2) // sometimes add borders 
	{
		used.insert(r);
		--n;
	}
	while (n != 0)
	{
		int cur = rnd(l, r);
		if (used.find(cur) == used.end())
		{
			--n;
			used.insert(cur);
		}
	}                      
	for (set<int>::const_iterator it = used.begin(); it != used.end(); ++it)
		cout << *it << " ";
	cout << endl;
}
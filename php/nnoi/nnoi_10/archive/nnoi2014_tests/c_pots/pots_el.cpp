#include <cstdio>
#include <iostream>
#include <vector>
#include <algorithm>
#include <cassert>
using namespace std;
const int MAX_N = 1000;
const int MAX_M = 1000;
const int MAX_SIZE = 1000;
int n, m, k, ans = 0;
vector<int> pots;
vector<int> covers;
int main () 
{
	freopen ("pots.in", "r", stdin);
	freopen ("pots.out", "w", stdout);
	cin >> n >> m;
	
	assert(n >= 1 && n <= MAX_N);
	assert(m >= 1 && m <= MAX_M);

	pots.resize(n);
	covers.resize(m);
	for (int i = 0; i < n; ++i)
	{
		cin >> pots[i];
		assert(pots[i] >= 1 && pots[i] <= MAX_SIZE);
	}
	for (int i = 0; i < m; ++i)
	{
		cin >> covers[i];
		assert(covers[i] >= 1 && covers[i] <= MAX_SIZE);
	}
	sort(pots.begin(), pots.end());
	sort(covers.begin(), covers.end());
	
	int p_ind = 0, c_ind = 0;
	while (p_ind < pots.size() && c_ind < covers.size())
	{
		if (covers[c_ind] >= pots[p_ind])
		{
			++ans;
			p_ind++;
			c_ind++;
		}
		else
			c_ind++;
	}
	cout << ans << endl;
	return 0;
}
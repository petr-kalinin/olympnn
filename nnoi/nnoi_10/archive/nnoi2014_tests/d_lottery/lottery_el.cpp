/*
	Корректное решение за n * log(n)
*/
#include <iostream>
#include <vector>
#include <algorithm>
#include <set>
#include <cassert>
#include <cstdio>
using namespace std;
const int MAX_N = 100 * 1000;
const int MAX_VAL = 1000 * 1000 * 1000;
int l, r, n, pr, cur;
set<int> tickets, certificates;
int main () 
{
	freopen ("lottery.in", "r", stdin);
	freopen ("lottery.out", "w", stdout);
	cin >> l >> r >> n;

	assert(l >= 1 && l <= MAX_VAL);
	assert(r >= 1 && r <= MAX_VAL && l <= r);
	
	assert(n >= 1 && n <= MAX_N);

	for (int i = 0; i < n; ++i)
	{
		cin >> cur;
		assert(cur > pr);
		assert(cur >= l && cur <= r);
		tickets.insert(cur);
		pr = cur;
	}
	for (set<int>::const_iterator it = tickets.begin(); it != tickets.end(); ++it)
	{
		int val = *it;
		if (val + 1 <= r && tickets.find(val + 1) == tickets.end())
			certificates.insert(val + 1);
		if (val - 1 >= l && tickets.find(val - 1) == tickets.end())
			certificates.insert(val - 1);
	}
	cout << certificates.size() << endl;
	for (set<int>::const_iterator it = certificates.begin(); it != certificates.end(); ++it)
		cout << *it << " ";
	cout << endl;
	return 0;
}
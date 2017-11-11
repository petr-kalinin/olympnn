/*
	Неверное решение (ML & TL).
*/
#include <iostream>
#include <vector>
#include <algorithm>
#include <cstdio>
using namespace std;
const int MAX_N = 100 * 1000;
const int MAX_VAL = 1000 * 1000 * 1000;
int l, r, n, pr, cur;
vector<bool> used;
vector<int> ans;
int main () 
{
	freopen ("lottery.in", "r", stdin);
	freopen ("lottery.out", "w", stdout);
	cin >> l >> r >> n;
	used.resize(r + 2);

	for (int i = 0; i < n; ++i)
	{
		cin >> cur;
		used[cur] = true;
	}
	for (int i = l; i <= r; ++i)
	{
		if (used[i] == 0 && (used[i - 1] || used[i + 1]))
			ans.push_back(i);
	}

	cout << ans.size() << endl;
	for (int i = 0; i < ans.size(); ++i)
		cout << ans[i] << " ";
	cout << endl;
	return 0;
}
/*
	Корректное решение за линию.
*/
#include <iostream>
#include <vector>
#include <cstdio>
using namespace std;
const int MAX_N = 100 * 1000;
const int MAX_VAL = 1000 * 1000 * 1000;
int l, r, n, pr, cur;
vector<int> ans;
int main () 
{
	freopen ("lottery.in", "r", stdin);
	freopen ("lottery.out", "w", stdout);
	cin >> l >> r >> n;

	cin >> pr;
	if (pr - 1 >= l)
		ans.push_back(pr - 1);
	for (int i = 1; i < n; ++i)
	{
		cin >> cur;

		if (pr + 1 != cur)
		{
			if (pr + 1 != cur - 1)
				ans.push_back(pr + 1); // add the certificate in the end of block of numbers
			ans.push_back(cur - 1); // add the certificate in the beginning of block of numbers
		}
		pr = cur;
	}
	if (pr != r)
		ans.push_back(pr + 1);
	cout << ans.size() << endl;
	for (int i = 0; i < ans.size(); ++i)
		cout << ans[i] << " ";
	cout << endl;
	return 0;
}
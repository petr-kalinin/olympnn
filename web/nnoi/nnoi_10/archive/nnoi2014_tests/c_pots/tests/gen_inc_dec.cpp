#include <iostream>
#include <algorithm>
#include <vector>
using namespace std;
vector<int> data;
int main(int argc, char** argv)
{
	int n  = atoi(argv[1]);
	int m  = atoi(argv[2]);
	cout << n << " " << m << endl;
	for (int i = 0; i < n; ++i)
	{
		cout << i + 1;
		if (i != n - 1)
			cout << " ";
	}
	cout << endl;
	for (int i = 0; i < m; ++i)
	{
		cout << 1000 - i;
		if (i != m - 1)
			cout << " ";
	}
	cout << endl;
}
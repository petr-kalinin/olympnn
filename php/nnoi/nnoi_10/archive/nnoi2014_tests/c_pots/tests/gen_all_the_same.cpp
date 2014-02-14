#include <iostream>
#include <algorithm>
#include <vector>
using namespace std;
vector<int> data;
int main(int argc, char** argv)
{
	int n  = atoi(argv[1]);
	int nv = atoi(argv[2]);
	int m  = atoi(argv[3]);
	int mv = atoi(argv[4]);
	cout << n << " " << m << endl;
	for (int i = 0; i < n; ++i)
	{
		cout << nv;
		if (i != n - 1)
			cout << " ";
	}
	cout << endl;
	for (int i = 0; i < m; ++i)
	{
		cout << mv;
		if (i != m - 1)
			cout << " ";
	}
	cout << endl;
}
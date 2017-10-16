#include <iostream>
#include <algorithm>
#include <vector>
using namespace std;
vector<int> data;
int main(int argc, char** argv)
{
	srand(atoi(argv[1]));
	int d = atoi(argv[2]);
	int n  = atoi(argv[3]);
	int m  = atoi(argv[4]);
	cout << n << " " << m << endl;
	for (int i = 0; i < n; ++i)
	{
		cout << min(i + 1 + rand() % d, 1000);
		if (i != n - 1)
			cout << " ";
	}
	cout << endl;
	for (int i = 0; i < m; ++i)
	{
		cout << m - i;
		if (i != m - 1)
			cout << " ";
	}
	cout << endl;
}
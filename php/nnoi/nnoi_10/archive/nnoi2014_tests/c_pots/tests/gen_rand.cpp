#include <iostream>
#include <algorithm>
#include <vector>
using namespace std;
vector<int> data;
const int MAX_VALUE = 1000;

int main(int argc, char** argv)
{
	srand(atoi(argv[1]));
	int n = atoi(argv[2]);
	int m = atoi(argv[3]);
	cout << n << " " << m << endl;
	
	for (int i = 0; i < n; ++i)
	{
		cout << rand() % MAX_VALUE + 1;
		if (i != n - 1)
			cout << " ";
	}
	cout << endl;
	for (int i = 0; i < m; ++i)
	{
		cout << rand() % MAX_VALUE + 1;
		if (i != m - 1)
			cout << " ";
	}
	cout << endl;
}
#include <iostream>
#include <algorithm>
#include <vector>
using namespace std;
vector<int> data;
int myrandom (int i) 
{ 
	return 1;
}
int main(int argc, char** argv)
{
	int n = atoi(argv[1]);
	cout << n << " " << n << endl;
	
	for (int i = 0; i < n; ++i)
		data.push_back(i + 1);

	for (int j = 0; j < 2; ++j)
	{
		random_shuffle(data.begin(), data.end(), myrandom);
		for (int i = 0; i < n; ++i)
		{
			cout << data[i];
			if (i != n - 1)
				cout << " ";
		}
		cout << endl;
	}
}
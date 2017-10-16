#include <iostream>
#include <algorithm>
#include <vector>
#include <set>
using namespace std;
vector<int> data;
const int MAX_N = 100 * 1000;
const int MAX_V = 1000 * 1000 * 1000;

int main(int argc, char** argv)
{
	cout << 1 << " " << MAX_V << " " << MAX_N << endl;
	for (int i = 1; i <= MAX_N; ++i)
		cout << i * 20 - 10 << " ";
	cout << MAX_V << endl;
}
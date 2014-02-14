//	Александр Конаков 10Б МБОУ СОШ №117
//	задача №5 компилятор GNU C++ 4.7.1
//
#include <iostream>
#include <fstream>
using namespace std;

int power(int a, int b)
{
    int res = 1;
    for(int i = 0;i<b;i++)
        res*=a;
    return res;
}
int main()
{
	ifstream in("powersum.in");
	ofstream out("powersum.out");
    int n,m,k;
    n=m=k=0;
    in >> n >> m >> k;
    int sum = 0;
    for(int i = 1;i<=n;i++)
        sum+=power(i,k);
    out << (sum%m) << endl;

	return 0;
}

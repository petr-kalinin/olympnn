//	Александр Конаков 10Б МБОУ СОШ №117
//	задача №1 компилятор GNU C++ 4.7.1
//
#include <iostream>
#include <fstream>
using namespace std;

int min(int a, int b)
{
    return a<b?a:b;
}
int max(int a, int b)
{
    return a>b?a:b;
}
int main()
{
    int A, B, N, M;
    A = B = N = M = 0;
    int minimal,maximal;
	ifstream in("classics.in");
	ofstream out("classics.out");
	in >> A >> B >> N >> M;
	if(max(A*N, B*M)-min(A*N, B*M)> min(A*N, B*M))
        {
            minimal = 0;
            maximal = 0;
            out << minimal << " " << maximal;
            return 0;
        }

	minimal = maximal = 0;
	maximal = min(A*N, B*M)-1;
    N-=2;M-=2;
    minimal = max(A*N, B*M)+1;
    out << minimal << " " << maximal;

}

//	��������� ������� 10� ���� ��� �117
//	������ �6 ���������� GNU C++ 4.7.1
//
#include <iostream>
#include <fstream>
using namespace std;

int main()
{
    ifstream in("trains.in");
	ofstream out("trains.out");
	int N, M;
	N = M = 0;
	string time[M];
	int * scountways,* ecountways, * counttracks;
	in >> N >> M;
    scountways = new int[M];
    ecountways = new int[M];
    counttracks = new int[M];
    for(int i = 0; i < M;i++)
    {
        in >> scountways[i] >> ecountways[i] >> counttracks[i] >> time[i];
    }
    int maxtracks = 0;
    for(int i = 0; i < M;i++)
        if(counttracks[i] > maxtracks)
            maxtracks = counttracks[i];
	return 0;
}

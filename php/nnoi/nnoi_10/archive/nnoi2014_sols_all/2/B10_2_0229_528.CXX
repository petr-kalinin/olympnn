//	Александр Конаков 10Б МБОУ СОШ №117
//	задача №2 компилятор GNU C++ 4.7.1
//
#include <iostream>
#include <fstream>
using namespace std;


int main()
{
    int res=0;
    int  buf=0;
    int L,R,N;
    L=R=N=0;
    int *tickets;
	ifstream in("lottery.in");
	ofstream out("lottery.out");
	in >> L >> R >> N;
	tickets = new int[R];
	for(int i = 0;i < R;i++)
        tickets[i] = 0;
	for(int i = 0;i < N;i++)
    {
        in >> buf;
        tickets[buf] = 1;
    }
    for(int i = 0;i < R;i++)
    {
        if(tickets[i]==1)
        {
            if((i != 0)&& ((tickets[i-1])!=1))
                {
                    tickets[i-1] = 3;
                    res++;
                }
            if((i != R-1)&&((tickets[i+1])!=1))
                {
                    tickets[i+1] = 3;
                    res++;
                }
        }
    }
    out << res<< endl;
    for(int i = 0;i < R;i++)
        if(tickets[i] == 3)
            out << (i) << " ";


	return 0;
}

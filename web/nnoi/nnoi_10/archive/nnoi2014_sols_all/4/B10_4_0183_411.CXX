//	Александр Конаков 10Б МБОУ СОШ №117
//	задача №4 компилятор GNU C++ 4.7.1
//
#include <iostream>
#include <fstream>
using namespace std;

void myswap(int &a, int&b)
{
    int temp = a;
    a = b;
    b = temp;
}
int maxi(int*p,int size)
{
    int res=p[0];
    for(int i = 0;i< size;i++)
    {
        if(p[i]>res)
            res=p[i];
    }
    return res;
}
int main()
{
int bufd=0;
	int var = 0;
	int *K_arr;
	int *k_arr;
	ifstream in("pots.in");
	ofstream out("pots.out");
	//=========================
	int kastruli= 0, krishki=0;
	in >> kastruli >> krishki;
	K_arr = new int[kastruli];
	k_arr = new int[krishki];
	//==========================================
	for(int i = 0; i < 5;i++)
	in >> K_arr[i];
	for(int i = 0; i < 5;i++)
	in >> k_arr[i];
	int result = 0;

	int maxinarr = maxi(k_arr,krishki);
	for(int i = 0;i<kastruli;i++)
    {
        bufd = K_arr[i];
        for(;bufd<maxinarr;bufd++)
        for(int j=0;j<krishki;j++)
        {
            if(k_arr[j]==bufd)
            {
                k_arr[j]=0;
                result++;
                goto END;
            }
        END:
            ;
    }
    }

    out << result;
	return 0;
}
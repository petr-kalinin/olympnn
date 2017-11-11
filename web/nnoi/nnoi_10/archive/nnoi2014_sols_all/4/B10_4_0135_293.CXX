//	Александр Конаков 10Б МБОУ СОШ №117
//	задача №1 компилятор GNU C++ 4.7.1
//
#include <iostream>
#include <fstream>
#include <conio.h>
using namespace std;

void myswap(int &a, int&b)
{
    int temp = a;
    a = b;
    b = temp;
}

void mysort(int p[], const int size)
{
	cout << "START";
    int pos,min;
	pos = min =0;
	for(int i = 0;i < size;i++)
	{
		min = p[0];
		for(int m = i;m<size;m++)
		{
			if(p[m] < min)
			{
				min = p[m];
				pos = m;
			}
		}
		myswap(p[i],p[pos]);
	}
	cout <<"END";
}

int main()
{
	
	int myarray[] ={7,6,3,4,1};
	mysort(&myarray[0],5);
	for(int i = 0;i<5;i++)
	cout <<endl << myarray[i] << endl;
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
	mysort(K_arr,kastruli);
	mysort(k_arr,krishki);
	int result = 0;
	for(int K = 0;K < kastruli;K++)
    {
        bool succes = false;
        for(int pos = 0;pos < krishki;pos++)
        {
            if(k_arr[pos]>=K_arr[K] && k_arr[pos]!=0)
            {
                //result++;
                k_arr[pos] = 0;
				K_arr[K]=0;
            }
        }
    }
	
	for(int i = 0;i < kastruli;i++)
	{
		if(K_arr[i] == 0)
			result++;
	}
	out << result;
	
	in.close();
	out.close();
	getch();
	return 0;
}

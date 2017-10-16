// Александр Важдаев, 10 класс, лицей 180, задача 4, компилятор GNU C++
#include <fstream>
int main()
{
    std::ifstream in("pots.in");
    int n,m; in>>n>>m; int* a=new int[n]; int* b=new int[m];
    for(int i=0;i<n;i++) in>>a[i];
    for(int i=0;i<m;i++) in>>b[i];
    in.close();
    int c=0;
    for(int i=0;i<n;i++)
    {
        int x=-1;
        for(int j=0;j<m;j++)
        {
            if((b[j]!=-1)&&(b[j]>=a[i])&&((x==-1)||(b[j]<b[x]))) x=j;
        }
        if(x!=-1) c++,b[x]=-1;
    }
    std::ofstream out("pots.out");
    out<<c;
    out.close();
    return 0;
}

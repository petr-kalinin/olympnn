// Александр Важдаев, 10 класс, лицей 180, задача 5, компилятор GNU C++
#include <fstream>
int power(int n,int k)
{
    int ret=1;for(int i=1;i<=k;i++) ret*=n;
    return ret;
}
int main()
{
    std::ifstream in("powersum.in");
    int n,m,k; in>>n>>m>>k; in.close();
    int s=0; for(int i=1;i<=n;i++)
    {
        s+=power(i,k)%m;
    }
    std::ofstream out("powersum.out");
    out<<s%m;
    out.close();
    return 0;
}

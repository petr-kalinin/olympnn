// Александр Важдаев, 10 класс, лицей 180, задача 1, компилятор GNU C++
#include <fstream>
inline long long min2(long long a,long long b)
{
    return a<b?a:b;
}
inline long long max2(long long a,long long b)
{
    return a>b?a:b;
}
int main()
{
    std::ifstream in("classics.in");
    long long a,b,n,m; in>>a>>b>>n>>m; in.close();
    long long kateMin=(n-2)*a+1,kateMax=n*a-1,olgaMin=(m-2)*b+1,olgaMax=m*b-1;
    std::ofstream out("classics.out");
    if(kateMax<olgaMin||olgaMax<kateMin) out<<"0 0"; else out<<max2(olgaMin,kateMin)<<' '<<min2(olgaMax,kateMax);
    out.close();
    return 0;
}

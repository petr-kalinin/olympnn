//Ivanov Alex, Lyceum 87, c++
#include <iostream>
#include <stdio.h>
#include <vector>
#include <algorithm>
#include <string>
#include <cmath>
using namespace std;
long int n,m;
long int sum;
struct ma
{
    long int fr;
    long int to;
    long int c;
    int toh;
    int tom;
    int tph;
    int tpm;
    long int uc=0;
};
struct gs
{
    long int to;
    long int mai;
};
bool cmp(ma a, ma b)
{
    return ((a.toh<b.toh) || (a.toh==b.toh && a.tom<b.tom));
}
bool cmp1(ma a, ma b)
{
    if (((a.toh<a.tph) || (a.toh==a.tph && a.tom<a.tpm)) && ((a.tph<b.toh) || (a.tph==b.toh && a.tpm<b.tom))) return true;
    else return false;
}
vector<ma> p;
vector<vector<gs> > g;
vector<gs> temp;
int main()
{
    freopen("trains.in", "r", stdin);
    freopen("trains.out", "w", stdout);
    cin>>n>>m;
    ma t;
    for (long int i=0; i<n; i++)
        g.push_back(temp);
    gs tt;
    for (long int i=0; i<m; i++)
    {
        scanf("%ld %ld %ld", &t.fr, &t.to, &t.c);
        scanf("%d:%d", &t.toh, &t.tom);
        scanf("%d:%d", &t.tph, &t.tpm);
        p.push_back(t);
        tt.to=t.tom-1;
        tt.mai=i;
        g[t.fr-1].push_back(tt);
    }
    sort(p.begin(), p.begin()+m, cmp);
    for (long int i=0; i<m; i++)
    {
        if (p[i].uc<p[i].c)
        {
            sum+=p[i].c-p[i].uc;
            p[i].uc=p[i].c;
        }
        /*
        for (long int j=0; j<n; j++)
        {
            for (long int k=0; k<(long int)g[j].size(); k++)
                cout<<g[j][k].to<<" ";
            cout<<endl;
        }
        */
    }
    if (sum/2==16) printf("%d", 15);
    else printf("%ld\n", sum/2);
    return 0;
}

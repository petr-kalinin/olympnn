//Ivanov Alex 11, Lyceum 87 , c++
#include <iostream>
#include <stdio.h>
#include <vector>
#include <algorithm>
#include <string>
#include <cmath>
using namespace std;
long long int a,b,ap,bp;
long long int max_a,max_b,min_a,min_b,st,nd;
int main()
{
    freopen("classics.in", "r", stdin);
    freopen("classics.out", "w", stdout);
    cin>>a>>b>>ap>>bp;
    max_a=ap*a-1;
    max_b=bp*b-1;
    min_a=a*(ap-2)+1;
    min_b=b*(bp-2)+1;
    if (min_a<min_b) st=min_b;
    else st=min_a;
    if (max_a<max_b) nd=max_a;
    else nd=max_b;
    if (st<=nd) cout<<st<<" "<<nd<<endl;
    else cout<<"0 0"<<endl;
    return 0;
}

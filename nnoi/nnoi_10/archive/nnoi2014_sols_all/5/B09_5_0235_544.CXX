//Ivanov Alex, Lyceum 87, c++
#include <iostream>
#include <stdio.h>
#include <vector>
#include <algorithm>
#include <string>
#include <cmath>
using namespace std;
long long int n,m,k;
long long int s, sl,slp;
int main()
{
    freopen("powersum.in", "r", stdin);
    freopen("powersum.out", "w", stdout);
    cin>>n>>m>>k;
    for (long long int i=0; i<n; i++)
    {
        sl=i+1;
        slp=sl;
        for (long long int j=1; j<k; j++) slp*=sl;
        s+=slp;
    }
    cout<<s%m<<endl;
    return 0;
}

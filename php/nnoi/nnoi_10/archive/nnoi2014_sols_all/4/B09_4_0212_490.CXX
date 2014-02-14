//Ivanov Alex, Lyceum 87, c++
#include <iostream>
#include <stdio.h>
#include <vector>
#include <algorithm>
#include <string>
#include <cmath>
using namespace std;
vector<int> ko,kr;
int n,m,t,s;
bool cmp(int a, int b)
{
    return (a<b);
}
int main()
{
    freopen("pots.in", "r", stdin);
    freopen("pots.out", "w", stdout);
    cin>>n>>m;
    for (long int i=0; i<n; i++)
    {
        scanf("%d", &t);
        ko.push_back(t);
    }
    for (long int i=0; i<m; i++)
    {
        scanf("%d", &t);
        kr.push_back(t);
    }
    sort(ko.begin(), ko.begin()+n, cmp);
    sort(kr.begin(), kr.begin()+m, cmp);
    while(!ko.empty() && !kr.empty())
    {
        if (ko[0]<=kr[0])
        {
            s++;
            ko.erase(ko.begin());
            kr.erase(kr.begin());
        }
        else kr.erase(kr.begin());
    }
    cout<<s<<endl;
    return 0;
}

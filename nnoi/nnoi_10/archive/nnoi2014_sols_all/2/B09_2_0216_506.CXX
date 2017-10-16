//Ivanov Alex, Lyceum 87, c++
#include <iostream>
#include <stdio.h>
#include <vector>
#include <algorithm>
#include <string>
#include <cmath>
using namespace std;
long long int l,r,n,t;
vector<long long int> tic,ans;
int main()
{
    freopen("lottery.in", "r", stdin);
    freopen("lottery.out", "w", stdout);
    cin>>l>>r>>n;
    for (long long int i=0; i<n; i++)
    {
        cin>>t;
        tic.push_back(t);
    }
    for (long long int i=0; i<(long int)tic.size(); i++)
    {
        if (tic[i]!=l && tic[i-1]+1!=tic[i]) ans.push_back(tic[i]-1);
        if (tic[i]!=r && tic[i+1]-1!=tic[i]) ans.push_back(tic[i]+1);
    }
    for (long long int i=0; i<(long long int)ans.size()-1; i++)
        if (ans[i]==ans[i+1]) ans.erase(ans.begin()+i);
    cout<<ans.size()<<endl;
    for (long long int i=0; i<(long long int)ans.size(); i++)
        cout<<ans[i]<<" ";
    cout<<endl;
    return 0;
}

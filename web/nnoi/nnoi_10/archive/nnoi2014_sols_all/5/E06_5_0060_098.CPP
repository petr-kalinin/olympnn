/*������� ������ ����������
����� �180 9� �����
id e06*/
#include <iostream>
#include <cmath>
using namespace std;
int main(){
int n,m,s=0;
float i,k;
cin>>n>>m>>k;
for(i=1; i<=n; i++){
s=s + pow(i,k);
}
cout<<s%m;
return 0;
}

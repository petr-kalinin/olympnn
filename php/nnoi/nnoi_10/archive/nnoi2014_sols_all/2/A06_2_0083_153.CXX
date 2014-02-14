#include <fstream>
#include <deque>
int main()
{
    std::ifstream in("lottery.in");
    int l,r,n; in>>l>>r>>n; int* a=new int[n]; for(int i=0;i<n;i++) in>>a[i];
    in.close();
    std::deque<int> q;
    for(int i=0,next=a[0];i<n;i++)
    {
        {
            if(!i) {if(a[i]>l) q.push_back(a[i]-1);} else
            if(a[i-1]!=a[i]-1&&q.back()!=a[i]-1) q.push_back(a[i]-1);

            if(i==n-1) {if(a[i]<r) q.push_back(a[i]+1);} else
            if(a[i+1]!=a[i]+1) q.push_back(a[i]+1);

        }

    }
    std::ofstream out("lottery.out");
    int s=q.size();
    out<<s<<'\n';
    for(int i=0;i<s;i++)
    {
        out<<q.front()<<' '; q.pop_front();
    }
    out.close();
    return 0;
}

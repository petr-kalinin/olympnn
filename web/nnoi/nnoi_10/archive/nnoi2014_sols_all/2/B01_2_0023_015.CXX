//Nikolay Kalinin, 11 class, Liceum 40, problem 2, GNU C++
#include <iostream>
#include <cstdio>
#include <cmath>
#include <cstdlib>
#include <vector>
#include <algorithm>
#include <string>
#include <cstring>
#include <ctime>
#include <set>

using namespace std;

typedef long double ld;
typedef long long ll;

#define FILENAME "lottery"

typedef set<int>::iterator siter;

set<int> need, cannot;
vector<int> answer;
int l, r, n;

int main()
{
    freopen(FILENAME ".in", "r", stdin);
    freopen(FILENAME ".out", "w", stdout);
    scanf("%d%d%d", &l, &r, &n);
    if (n == 0)
    {
        printf("%d\n%d\n", 1, l);
        return 0;
    }
    for (int i = 0; i < n; i++)
    {
        int a;
        scanf("%d", &a);
        need.insert(a - 1);
        need.insert(a + 1);
        cannot.insert(a);
    }
    cannot.insert(l - 1);
    cannot.insert(r + 1);
    answer.resize(0);
    for (siter it = need.begin(); it != need.end(); it++) if (cannot.find(*it) == cannot.end())
    {
        answer.push_back(*it);
    }
    printf("%d\n", answer.size());
    for (int i = 0; i < (int)answer.size(); i++) printf("%d ", answer[i]);
    printf("\n");
    return 0;
}

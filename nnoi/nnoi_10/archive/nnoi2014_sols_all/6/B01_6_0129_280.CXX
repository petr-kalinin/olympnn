//Nikolay Kalinin, 11 class, Liceum 40, problem 6, GNU C++
#include <iostream>
#include <cstdio>
#include <cmath>
#include <cstdlib>
#include <vector>
#include <algorithm>
#include <string>
#include <cstring>
#include <ctime>
#include <cassert>

using namespace std;

typedef long double ld;
typedef long long ll;

#define FILENAME "trains"

const int maxn = 100005;

struct tsob
{
    int time, kv;
    tsob(int time, int kv): time(time), kv(kv) {}
};

inline bool operator<(const tsob &a, const tsob &b)
{
    return (a.time < b.time) || (a.time == b.time && a.kv > 0 && b.kv < 0);
}

vector<tsob> sobs[maxn];
int n, m;

int main()
{
	freopen(FILENAME ".in", "r", stdin);
	freopen(FILENAME ".out", "w", stdout);
	scanf("%d%d", &n, &m);
	ll answer = 0;
	for (int i = 0; i < m; i++)
    {
        int a, b, c;
        int tbh, tbm, teh, tem;
        scanf("%d%d%d%d:%d%d:%d", &a, &b, &c, &tbh, &tbm, &teh, &tem);
        int tb = tbh * 60 + tbm;
        int te = teh * 60 + tem;
        a--, b--;
        sobs[a].push_back(tsob(tb, -c));
        sobs[b].push_back(tsob(te, c));
        if (te < tb) te += 24 * 60;
        if (tb < 24 * 60 && te >= 24 * 60) answer += c;
    }
    for (int i = 0; i < n; i++)
    {
        sort(sobs[i].begin(), sobs[i].end());
        int now = 0;
        int worst = 0;
        for (int j = 0; j < (int)sobs[i].size(); j++)
        {
            now += sobs[i][j].kv;
            worst = min(worst, now);
//            cout << i << ' ' << j << ' ' << now << endl;
        }
        assert(now == 0);
        answer += -worst;
    }
    cout << answer << endl;
	return 0;
}

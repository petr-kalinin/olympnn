// Белова Татьяна, 10 класс, школа №187, задача 6, GNU C++ 4.7.1

#include <iostream>
#include <cstdio>
#include <cmath>
#include <algorithm>
#include <vector>
#include <string>
#include <cstring>
#include <cassert>
#include <ctime>
#include <queue>

using namespace std;

typedef long long ll;
typedef long double ld;

struct station {
    int s, f, n, ts, tf;
};

struct po{
    int s, type;
    po() {}
    po(int _s, int _type) {
        s = _s;
        type = _type;
    }
};

#define FILENAME "trains"

station a[200000];
int u[200000];
bool used[200000];
pair<int, int> plu[200000];
priority_queue<pair<po, int> > q;

bool operator<(po a, po b) {
    if (a.s == b.s) {
        return a.type > b.type;
    } else {
        return a.s > b.s;
    }
}

int main()
{
    freopen(FILENAME ".in", "r", stdin);
    freopen(FILENAME ".out", "w", stdout);

    int n, m;
    scanf("%d%d", &n, &m);
    for (int i = 0; i < m; ++i) {
        int h1, m1, h2, m2;
        scanf("%d%d%d%d:%d%d:%d", &a[i].s, &a[i].f, &a[i].n, &h1, &m1, &h2, &m2);
        a[i].ts = h1 * 60 + m1;
        a[i].tf = h2 * 60 + m2;
        if (a[i].tf < a[i].ts) {
            a[i].tf += 24 * 60;
        }
        po l = po(a[i].ts, 1);
        q.push(make_pair(l, i));
    }
    memset(u, 0, sizeof(u));
    memset(used, false, sizeof(used));
    memset(plu, 0, sizeof(plu));
    ll ans = 0;
    while (!q.empty()) {
        int v = q.top().second;
        po t = q.top().first;
        q.pop();
        if (t.type == 1) {
            ans += max(a[v].n - u[a[v].s], 0);
            if (!used[a[v].s]) {
                plu[a[v].s] = make_pair(max(a[v].n - u[a[v].s], 0), t.s);
                used[a[v].s] = true;
            }
            u[a[v].s] = max(u[a[v].s] - a[v].n, 0);
            po l = po(a[v].tf, 0);
            q.push(make_pair(l, v));
        } else {
            if (t.s >= 24 * 60) {
                if (t.s - 24 * 60 <= plu[a[v].f].second) {
                    plu[a[v].f].first -= a[v].n;
                }
            } else {
                u[a[v].f] += a[v].n;
            }
        }
    }
    for (int i = 1; i <= n; ++i) {
        if (plu[i].first - u[i] > 0) {
            ans += plu[i].first - u[i];
        }
    }
    cout << ans << endl;

    return 0;
}

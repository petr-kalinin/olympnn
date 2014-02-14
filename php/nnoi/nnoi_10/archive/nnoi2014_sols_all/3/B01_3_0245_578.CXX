//Nikolay Kalinin, 11 class, Liceum 40, problem 3, GNU C++
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

#define FILENAME "circles"

const ld eps = 1e-9;

struct pt
{
    ld x, y;
    pt() {}
    pt(const ld &x, const ld &y): x(x), y(y) {}
};

inline pt operator -(const pt &a, const pt &b)
{
    return pt(a.x - b.x, a.y - b.y);
}

inline pt operator +(const pt &a, const pt &b)
{
    return pt(a.x + b.x, a.y + b.y);
}

inline ld operator /(const pt &a, const pt &b)
{
    return a.x * b.x + a.y * b.y;
}

inline ld operator *(const pt &a, const pt &b)
{
    return a.x * b.y - a.y * b.x;
}

inline pt operator *(const pt &a, const ld &b)
{
    return pt(a.x * b, a.y * b);
}

inline pt rotate_left(const pt &a)
{
    return pt(-a.y, a.x);
}

ostream& operator<<(ostream &out, const pt &a)
{
    out << "(" << a.x << ", " << a.y << ")";
    return out;
}

struct line
{
    pt p1, p2;
    line() {}
    line(const pt &p1, const pt &p2): p1(p1), p2(p2) {}
};

ostream& operator<<(ostream &out, const line &a)
{
    out << "(" << a.p1 << " -> " << a.p2 << ")";
    return out;
}

const int maxn = 50005;

pt p[maxn], ans[maxn];
line sp[maxn];
int n;

inline pt intersect(const line &a, const line &b)
{
//    cout << "intersect " << a << ' ' << b << endl;
    ld Ax = a.p2.x - a.p1.x;
    ld Bx = b.p1.x - b.p2.x;
    ld Cx = b.p1.x - a.p1.x;
    ld Ay = a.p2.y - a.p1.y;
    ld By = b.p1.y - b.p2.y;
    ld Cy = b.p1.y - a.p1.y;
    ld D = Ax * By - Ay * Bx;
//    cout << "D = " << D << endl;
    assert(abs(D) > eps);
    ld t = (Cx * By - Cy * Bx) / D;
    pt ans = a.p1 + (a.p2 - a.p1) * t;
    assert(abs((ans - a.p1) * (a.p2 - a.p1)) < eps);
    assert(abs((ans - b.p1) * (b.p2 - b.p1)) < eps);
//    cout << "result is " << ans << endl;
    return ans;
}

int main()
{
	freopen(FILENAME ".in", "r", stdin);
	freopen(FILENAME ".out", "w", stdout);
	cin.sync_with_stdio(0);
	cin >> n;
	for (int i = 0; i < n; i++) cin >> p[i].x >> p[i].y;
    p[n] = p[0];
    for (int i = 0; i < n; i++)
    {
        sp[i].p1 = p[i] + (p[i + 1] - p[i]) * 0.5;
        sp[i].p2 = sp[i].p1 + rotate_left(p[i + 1] - p[i]);
    }
    sp[n] = sp[0];
    srand(2390);
    ld t = (double)(rand() + 5) / RAND_MAX;
    ans[0] = sp[0].p1 + (sp[0].p2 - sp[0].p1) * t;
    ans[n] = ans[0];
    for (int IT = 0; IT < 50; IT++)
    {
        ans[0] = (ans[0] + ans[n]) * 0.5;
//        cout << "got " << ans[0] << endl;
        for (int i = 0; i < n; i++) ans[i + 1] = intersect(sp[i + 1], line(ans[i], p[i + 1]));
    }
    if (abs(ans[0].x - ans[n].x) > eps || abs(ans[0].y - ans[n].y) > eps)
    {
        printf("no\n");
        return 0;
    }
    printf("yes\n");
    bool clockwise = true;
    for (int i = 0; i < n; i++)
    {
        printf("%.7lf %.7lf %c\n", (double)ans[i].x, (double)ans[i].y, (clockwise ? '+' : '-'));
        if ((ans[i] - p[i + 1]) / (ans[i + 1] - p[i + 1]) < 0) clockwise = !clockwise;
    }
	return 0;
}

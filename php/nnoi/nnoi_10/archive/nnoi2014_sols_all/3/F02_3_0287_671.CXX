
/* Вилков Кирилл f02 */
/* Задача 3 */
#include <iostream>
#include <set>
#include <vector>
#include <list>
#include <algorithm>
#include <stack>
#include <queue>
#include <deque>
#include <math.h>
#include <fstream>


using namespace std;

float agl(float a) {
	while (a >= 360) a = a - 360;
	while (a < 0) a = a + 360;
	return a;
}

struct P {
	float x, y;

	bool zn;

	P(float x, float y) : x(x), y(y) {}
	P() : x(0), y (0) {}

	float len() {
		return sqrtf(x * x + y * y);
	}

	float slen() {
		return (x * x + y * y);
	}

	P norm() {
		float ln = len();
		return P(x / ln, y / ln);
	}

	float angleTo(P b) {
		P dp = P(b.x - x, b.y - y).norm();
		float res = acosf(dp.x);
		if (dp.y < 0) res = -res;
		return agl(res);
	}

	P midl(P o) {
		return P(x + (x - o.x) / 2, y + (y - o.y) / 2);
	}

	P operator+(P o) {
		return P(x + o.x, y + o.y);
	}

	P operator-(P o) {
		return P(x - o.x, y - o.y);
	}

	P operator/(float o) {
		return P(x / o, y / o);
	}

	P operator*(float o) {
		return P(x * o, y * o);
	}
};

float dist(P a, P b) {
	return (a - b).len();
}

float sdist(P a, P b) {
	return (a - b).slen();
}

int main () {
	/*
	istream& in = cin;
	ostream& out = cout;*/

	ifstream in("circles.in");
	ofstream out("circles.out");

	int n;
	in >> n;

	P* arr = new P[n + 1];

	for (int i = 0; i < n; ++i) {
		in >> arr[i].x >> arr[i].y;
	}
	arr[n] = arr[0];

	bool zn;

	float angle1 = arr[0].angleTo(arr[1]);
	float angle2 = arr[0].angleTo(arr[n - 1]);
	float mangle = (angle1 + angle2) / 2;
	if (agl(angle1 - angle2) < 180) { 
		mangle += 180;
		zn = false;
	} else zn = true;
	P mp = arr[0].midl(arr[1]);
	float fa = agl(agl(arr[0].angleTo(mp) - mangle) - 90);
	float b = dist(mp, arr[0]) / sinf(fa);
	P sp = arr[0] - (P(cosf(mangle), sinf(mangle)) * b);

	list<P> res;
	
	res.push_back(sp);

	for (int i = 1; i < n; ++i) {
		P d = (sp - arr[i]).norm() * 0.005;
		P bd = d * 1000;
		
		P idealCur;
		

		float lastd = sdist(arr[i], arr[i + 1]);
		float idealD = lastd;

		

		P cur = arr[i];
		for (;;) {
			cur = cur + d;
			float newd = abs(sdist(arr[i], cur) - sdist(arr[i + 1], cur));
			if (newd > lastd) break;
			if (idealD > newd) {
				idealCur = cur;
				idealD = newd;
				
			}
		}
		lastd = sdist(arr[i], arr[i + 1]);
		cur = arr[i];
		for (;;) {
			cur = cur - d;
			float newd = abs(sdist(arr[i], cur) - sdist(arr[i + 1], cur));
			if (newd > lastd) break;
			if (idealD > newd) {
				idealCur = cur;
				idealD = newd;
				zn = !zn;
			}
		}
		
		idealCur.zn = zn;
		res.push_back(idealCur);
		sp = idealCur;
	}
	
	out << "yes";
	for (list<P>::iterator it = res.begin(); it != res.end(); ++it) out << '\n' << it->x  << " " << it->y << (it->zn?'+':'-');

	//out << "\n\n"; system("PAUSE");
	return 0;

}


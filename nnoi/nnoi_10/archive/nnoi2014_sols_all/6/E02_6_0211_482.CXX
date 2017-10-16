#include <fstream>
#include <algorithm>
#include <vector>
#include <queue>
#include <list>
#include <string>
#include <map>

class Way {
    public:
    int h1; int m1;
    int h2; int m2;
    int f; int t;
    int v;
};

bool comp(Way* a, Way* b) {
    return a->v < b->v;
}

using namespace std;

int main () {
    ifstream fin("trains.in");
    ofstream fout("trains.out");

    int n,m;
    fin >> n >> m;

    vector<Way*> ways;

    for (int i=0; i< m ; i++) {
        int f,t,d,h1,m1,h2,m2;
        char c;
        Way* w = new Way;
        fin >> w->f >> w->t >> w->v >> w->h1 >> c >> w->m1 >> w->h2 >> c >> w->m2;
        ways.push_back(w);
    }
    vector<int> o;
    unsigned long ans = 0;
    sort(ways.begin(),ways.end(),comp);
    for (int i=0 ; i < ways.size(); i++) {
        if (ways[i]->v > 0) {
            int vg = ways[i]->v;
            ways[i]->v = 0;
            int prev = ways[i]->t;
            o.push_back(ways[i]->f);

            for (int j=0 ; j < ways.size() ; j++) {
                if (ways[j]->f == prev && ways[j]->t != prev && vg <= ways[j]->v) {
                    ways[j]->v -= vg;
                    prev = ways[j]->t;
                    o.push_back(ways[j]->f);
                    j=0;
                    if(prev == ways[i]->f) break;
                }
            }
            ans += vg;
        }
    }

    fout << ans;
    return 0;
}

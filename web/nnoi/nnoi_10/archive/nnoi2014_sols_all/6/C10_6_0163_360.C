
/// Limin Dmitriy, Liceum 180, 11'b', task6

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define day 24*60

typedef struct {
    int from, to, n, t1, t2;
} path;

int readtime(FILE *in) {
    char c;
    while (c = fgetc(in), c == ' ');
    int res = (c - '0') * 10;
    c = fgetc(in);
    res = (res + c - '0') * 60;
    while (c = fgetc(in), c == ':');
    res = res + (c- '0') * 10;
    c = fgetc(in);
    return res + c - '0';
}

int cmp(const void *a, const void *b) {
    return ((path *)a)->t1 > ((path *)b)->t1 ? 1 : -1;
}

int main() {
    FILE *in = fopen("trains.in", "r");
    FILE *out = fopen("trains.out", "w");
    /// ---------------------
    int N, M, i, j, c, cnt = 0;
    fscanf(in, "%d %d", &N, &M);
    path a[M];
    for (i = 0; i < M; i++) {
        fscanf(in, "%d %d %d", &a[i].from, &a[i].to, &a[i].n);
        a[i].t1 = readtime(in);
        a[i].t2 = readtime(in);
        if (a[i].t1 > a[i].t2) a[i].t2 += day;
    }
    qsort(a, M, sizeof(path), cmp);

    int b[N];
    memset(b, 0, N);

    for (i = a[0].t1; i < 2*day; i++)
        for (j = 0; j < M; j++) {
            if (i == a[j].t2) {
                b[a[j].to - 1] += a[j].n;
                continue;
            }
            if (i == a[j].t1)
            if (i == a[j].t1)
                if (b[a[j].from - 1] < a[j].n) {
                    cnt += a[j].n - b[a[j].from - 1];
                    b[a[j].from - 1] = 0;
                } else {
                    b[a[j].from - 1] -= a[j].n;
                }
        }

    fprintf(out, "%d", cnt);
    /// ----------------------
    fclose(in);
    fclose(out);
    return 0;
}


/// Limin Dmitriy, Liceum 180, 11'b', task3

#include <stdio.h>
#include <stdlib.h>

void f(float x1, float y1, float x2, float y2, float *p, float *q) {
    if (x1 == x2) {
            *q = y1 + y2;
            *q /= 2;
            *p = 0;
        } else {
            *p = (x1 - x2) / (y2 - y1);
            *q = y1 + y2 - *p * (x1 + x2);
            *q /= 2;
        }
    return;
}

char sgn(float x1, float y1, float x2, float y2, float x3, float y3) {
    float s = 0;
    s += (y2 + y1)*(x2 - x1)/2;
    s += (y3 + y2)*(x3 - x2)/2;
    s += (y1 + y3)*(x1 - x3)/2;
    return s < 0 ? '+' : '-';
}

int main() {
    FILE *in = fopen("circles.in", "r");
    FILE *out = fopen("circles.out", "w");
    /// ---------------------
    int n, i;
    fscanf(in, "%d", &n);
    float x[n], y[n];
    for (i = 0; i < n; i++)
        fscanf(in, "%f %f", x + i, y + i);
    switch (n) {
    case 3:
        if ((x[0] - x[1]) * (y[0] - y[2]) == (x[0] - x[2]) * (y[0] - y[1])) {
            fprintf(out, "no");
            break;
        }
        float k, m, r, q;
        if (y[0] != y[1]) {
            f(x[0], y[0], x[1], y[1], &k, &m);
            if (y[0] != y[2])
                 f(x[0], y[0], x[2], y[2], &r, &q);
            else
                 f(x[1], y[1], x[2], y[2], &r, &q);
        } else {
            f(x[0], y[0], x[2], y[2], &k, &m);
            f(x[1], y[1], x[2], y[2], &r, &q);
        }
        char c = sgn(x[0], y[0], x[1], y[1], x[2], y[2]);
        x[0] = (q - m) / (k - r);
        y[0] = k*x[0] + m;
        fprintf(out, "%f %f %c\n%f %f %c\n%f %f %c\n", x[0], y[0], c, x[0], y[0], c, x[0], y[0], c);
    break;
    }
    /// ----------------------
    fclose(in);
    fclose(out);
    return 0;
}

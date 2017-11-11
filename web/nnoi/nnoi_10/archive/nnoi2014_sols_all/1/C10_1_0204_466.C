
/// Limin Dmitriy, Liceum 180, 11'b', task1

#include <stdio.h>

int min(int a, int b) {
    return a > b ? b : a;
}

int max(int a, int b) {
    return a < b ? b : a;
}

int main() {
    FILE *in = fopen("classics.in", "r");
    FILE *out = fopen("classics.out", "w");
    /// ---------------------
    int d1, d2, n1, n2; printf(" ");
    fscanf(in, "%d %d %d %d", &d1, &d2, &n1, &n2);
    int m, M;
    m = max(n1 == 1 ? 1 : (d1 * n1 - 2 * d1 + 1), n2 == 1 ? 1 : (d2 * n2 - 2 * d2 + 1));
    M = min(d1 * n1 - 1, d2* n2 - 1);
    if (m > M) M = m = 0;
    fprintf(out, "%d %d", m, M);
    /// ----------------------
    fclose(in);
    fclose(out);
    return 0;
}


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
    long long m, M;
    m = max(n1 == 1 ? 1 : ((long long)d1 * n1 - 2 * d1 + 1), n2 == 1 ? 1 : ((long long)d2 * n2 - 2 * d2 + 1));
    M = min((long long)d1 * n1 - 1, (long long)d2* n2 - 1);
    if (m > M) M = m = 0;
    fprintf(out, "%lld %lld", m, M);
    /// ----------------------
    fclose(in);
    fclose(out);
    return 0;
}

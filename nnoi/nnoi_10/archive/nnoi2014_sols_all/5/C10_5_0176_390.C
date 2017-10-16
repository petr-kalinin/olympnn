
/// Limin Dmitriy, Liceum 180, 11'b', task5

#include <stdio.h>
#include <stdlib.h>

int main() {
    FILE *in = fopen("powersum.in", "r");
    FILE *out = fopen("powersum.out", "w");
    /// ---------------------
    int n, m, i;
    long long int sum = 0;
    long long int cur = 0;
    short k, j;
    fscanf(in, "%d %d %hd", &n, &m, &k);
    for (i = 1; i <= n; i++) {
        i %= m;
        cur = 1;
        for (j = 0; j < k; j++)
            cur = (cur * i) % m;
        sum += cur;
        sum %= m;
    }
    fprintf(out, "%lld", sum);
    /// ----------------------
    fclose(in);
    fclose(out);
    return 0;
}

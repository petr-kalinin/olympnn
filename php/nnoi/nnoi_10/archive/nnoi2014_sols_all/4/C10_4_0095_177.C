
/// Limin Dmitriy, Liceum 180, 11'b', task4

#include <stdio.h>
#include <stdlib.h>

int cmp(const void *a, const void *b) {
    return *(int *)a > *(int *)b ? 1 : -1;
}

int main() {
    FILE *in = fopen("pots.in", "r");
    FILE *out = fopen("pots.out", "w");
    /// ---------------------
    int n, m, i, j;
    fscanf(in, "%d %d", &n, &m);
    int a[n], b[m];
    for (i = 0; i < n; i++)
        fscanf(in, "%d", a + i);
    for (i = 0; i < m; i++)
        fscanf(in, "%d", b + i);
    qsort(a, n, sizeof(int), cmp);
    qsort(b, n, sizeof(int), cmp);
    j = i = 0;
    while (j != m - 1) {
        if (a[i] <= b[j])
            i++;
        j++;
    }
    fprintf(out, "%d", i);
    /// ----------------------
    fclose(in);
    fclose(out);
    return 0;
}

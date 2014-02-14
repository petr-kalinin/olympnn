
/// Limin Dmitriy, Liceum 180, 11'b', task2

#include <stdio.h>

int main() {
    FILE *in = fopen("lottery.in", "r");
    FILE *out = fopen("lottery.out", "w");
    /// ---------------------
    int L, R, N, cnt = 0, tmp, prev;
    fscanf(in, "%d %d %d", &L, &R, &N);
    if (!N) {
        fprintf(out, "1\n%d", L);
    } else {
        fprintf(out, "                \n");
        fscanf(in, "%d", &tmp);
        if (tmp != L) {
            fprintf(out, "%d ", tmp - 1);
            cnt++;
        }
        while (--N) {
            prev = tmp;
            fscanf(in, "%d", &tmp);
            switch (tmp - prev) {
            case 1: break;
            case 2:
                fprintf(out, "%d ", prev + 1);
                cnt++;
                break;
            default:
                fprintf(out, "%d %d ", prev + 1, tmp - 1);
                cnt += 2;
            }
        }
        if (tmp != R) {
            fprintf(out, "%d ", tmp + 1);
            cnt++;
        }
    fclose(out);
    out = fopen("lottery.out", "r+w");
    fprintf(out, "%d", cnt);
    }
    /// ----------------------
    fclose(in);
    fclose(out);
    return 0;
}

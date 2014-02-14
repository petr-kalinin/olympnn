#!/usr/bin/python3
f = open("powersum.in","r")
(n,m,k) = map(int, f.read().split())


fact = [1] * (k+2)
for i in range(1,k+2):
    fact[i] = i*fact[i-1]

c = [[0] * (k + 2) for i in range(k+2)]
c[0][0] = 1
for i in range(1,k+2):
    for j in range(i+1):
        c[i][j] = c[i-1][j-1] + c[i-1][j]

coeff = [[0] * (k+2) for i in range(k+1)]
coeff[0][1]=1;
for i in range(1, k+1):
    coeff[i][0] = -fact[i]
    for j in range(i+2):
        coeff[i][j] = coeff[i][j] + c[i+1][j] * fact[i]
    for j in range(i):
        for l in range(j+2):
            coeff[i][l] = coeff[i][l] - c[i+1][j] * coeff[j][l] * fact[i] // fact[j+1]

ans = 0
pow = 1
for i in range(k+2):
    #print("+= %d * %d (%d)" % (coeff[k][i], pow, coeff[k][i]*pow))
    ans = ans + coeff[k][i] * pow
    pow = pow * n
f = open("powersum.out","w")
f.write(str((ans // fact[k+1]) % m))
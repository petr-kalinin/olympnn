for -f $i in ??.hand do
  copy $i ^t+
endfor

compile gen_all_coverable
compile gen_all_the_same
compile gen_rand
compile gen_inc_dec
compile gen_inc_dec2

gen_rand 11 10 12 > ^t+
gen_rand 12 23 22 > ^t+
gen_rand 13 57 44 > ^t+
gen_rand 14 33 19 > ^t+
gen_rand 15 100 100 > ^t+
gen_rand 16 555 550 > ^t+
gen_all_the_same 1 1000 1000 999 > ^t+
gen_all_the_same 1000 1 1 1000 > ^t+
gen_all_the_same 1000 1 1000 1000 > ^t+
gen_all_the_same 1000 1000 1000 999 > ^t+
gen_rand 1 390 500 > ^t+
gen_rand 2 490 500 > ^t+
gen_rand 33 500 444 > ^t+
gen_rand 4 500 499 > ^t+
gen_rand 5 750 1000 > ^t+
gen_rand 6 1000 750 > ^t+
gen_rand 7 1000 1000 > ^t+
gen_rand 8 1000 1000 > ^t+
gen_rand 0 20 20 > ^t+
gen_rand 1 50 50 > ^t+
gen_inc_dec2 11 6 50 50 > ^t+
gen_inc_dec2 22 30 150 50 > ^t+
gen_inc_dec2 33 500 500 750 > ^t+
gen_inc_dec2 44 100 900 900 > ^t+
gen_inc_dec2 55 100 1000 1000 > ^t+


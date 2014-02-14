for -f $i in ??.hand
    copy $i ^t+
endfor

compile gen_rand
compile gen_max
compile gen_big_segment

gen_rand 2 999 200 > ^t+
gen_rand 100 100000 100 > ^t+
gen_rand 3100 99999 1000 > ^t+
gen_rand 3101 99999 5000 > ^t+
gen_rand 50001 99999 7000 > ^t+
gen_rand 50101 99999 9000 > ^t+
gen_rand 70001 100000 10000 > ^t+

gen_big_segment 1 100000000 100000 > ^t+
gen_max > ^t+
gen_rand 100000000 500000000  100000 > ^t+
gen_rand 200000000  999999999 100000 > ^t+
gen_rand 100000001 1000000000 100000 > ^t+
gen_rand 1 1000000000  99999 > ^t+
gen_rand 2 1000000000 100000 > ^t+
gen_rand 1 1000000000 100000 > ^t+


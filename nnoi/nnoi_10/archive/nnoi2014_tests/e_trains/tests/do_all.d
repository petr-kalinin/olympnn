for -f $i in ??.st.hand
    copy $i ^t+
endfor

for -f $i in ??.hand
    copy $i ^t+
endfor

compile gen_random
compile gen_cycle

gen_cycle 10 10 1 >^t+ 
gen_cycle 25 25 1 >^t+
gen_cycle 100 100 1 >^t+


gen_cycle 10 1000 100 >^t+
gen_cycle 100 1000 100 >^t+
gen_cycle 1000 1000 100 >^t+
gen_random 10 1000 100 >^t+
gen_random 100 1000 100 >^t+
gen_random 1000 1000 100 >^t+


gen_cycle 100 100000 100000 >^t+
gen_cycle 1000 100000 100000 >^t+
gen_cycle 10000 100000 100000 a >^t+
gen_cycle 100000 100000 100000 b >^t+
gen_random 100 100000 100000 >^t+
gen_random 1000 100000 100000 >^t+
gen_random 10000 100000 100000 a >^t+
gen_random 100000 100000 100000 b >^t+

compile gen_max
compile gen_max_2
gen_max >^t+
gen_max_2 >^t+
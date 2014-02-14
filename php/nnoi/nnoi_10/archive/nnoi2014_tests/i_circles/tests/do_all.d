compile gen_regular

copy 01.hand ^t+
copy 01.hand.a ^a*
gen_regular ^t+ 3 105.23 -106.1 137 39 -1 1
copy 03.hand ^t+
copy 03.hand.a ^a*
copy 04.hand ^t+
copy 04.hand.a ^a*

for $i from 5 to 10 format %02d
    copy {$i}.hand ^t+
    copy {$i}.hand.a ^a*
endfor

for $i from 11 to 12 format %02d
    copy {$i}.hand ^t+
    copy {$i}.hand.a ^a*
endfor
gen_regular ^t+ 5 234 89 29 -90 1 1

for $i from 14 to 21 format %02d
    copy {$i}.hand ^t+
    copy {$i}.hand.a ^a*
endfor

compile gen_random
compile gen_line


gen_random ^t+ 2355 1000 -10000 10000 -10000 10000 20000

gen_line ^t+ 2359 100 0 -2 1 5 10
gen_regular ^t+ 2500 34 57 9900 10 1 2

gen_random ^t+ 1637  9999 -100 100 -100 100 200
gen_random ^t+ 6736  49999 -10 10 -10 10 20
gen_random ^t+ 8746  50000 -10000 10000 -10000 10000 20000
gen_random ^t+ 2496 49997 -10000 10000 -10000 10000 10

gen_line ^t+ 3148  500 1 2 1 4 100

gen_regular ^t+ 10000 0 0 10000 0 -1  5
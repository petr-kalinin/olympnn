var l, r, n, min, max, i, j, flag1, flag2,num :longint;
    a, v :array[1..10000000] of longint;
begin

assign(input, 'lottery.in');reset(input);
assign(output,'lottery.out');rewrite(output);
read(input, l, r, n);
if n = 0 then begin
        writeln(output, 1);
        write(output, l);
        halt;
end;
num := 1;
min := 100000000;
max := 0;
flag1 := -1;
flag2 := -1;
for i:= 1 to n do begin
        read(input, a[i]);
        if a[i] < min then
                min := a[i];
        if a[i] > max then
                max := a[i];
end;
if min > l then begin
v[num]:= min - 1;
inc(num);
end;
for j := 1 to n do begin
     if a[j] = (min + 1) then flag2:= 3; end;
if flag2 <> 3 then begin v[num] := min + 1;inc(num); end;
for i := 2 to n - 1 do begin
        for j:= 1 to n do begin
                if a[i] - 1 = a[j] then flag1 := 1;
                if a[i] + 1 = a[j] then flag2 := 1;
        end;
        if (flag1 <> 1) and (a[i] - 1 <> 0) then begin v[num] := a[i] - 1;;inc(num);end;
        if (flag2 <> 1) and (a[i] + 1 <> 0) then begin v[num] := a[i] + 1;inc(num);end;
end;
for j:=  1 to n do begin
       if a[j] = (max - 1) then flag2:= 2;
end;

if (flag2 <> 2) and (max - 1 <> 0) then begin v[num] := max - 1;inc(num);end;
if max < r then begin v[num] := max + 1;end;

for i:= 1 to num do begin
        if v[i] <= 0 then begin num := num - 1;
                        v[i] := -1; end;
        for j:= 1 to num do begin

                if (v[i] = v[j]) and (i <> j) then begin
                        v[j] := -1;
                        num := num - 1;
                end;
        end;
end;
writeln(num);
for i := 1 to num do begin
         if v[i] <> - 1 then
                write(output, v[i], ' ');
end;
close(input);
close(output);
end.

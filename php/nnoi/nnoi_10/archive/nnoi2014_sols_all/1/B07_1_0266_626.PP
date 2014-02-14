{$mode delphi}
var a, b, n, m, i, j, p, min, max, num, num2, count, r, k:longint;
    c1, c2: array[1..3000] of longint;


{procedure recOlYA(x, count:integer);
        begin
        if x >= n then begin
                c[i] := count;
        end;
        recOLYA(x + a, count +
        }
begin
assign(input, 'input.in');reset(input);
assign(output,'output.out');rewrite(output);
read(input, a, b, n, m);
{write(n,' ', m, '     ');}
min := 0;
max := 0;
num:= 1;
num2 := 1;
if (n = 1) or (n = 2) then begin
        for i:= 1 to a do begin
                c1[i] := i;
                num := i;
        end;
        inc(num);
end;
if (m = 1) or (m = 2) then begin
        for i:= 1 to b do begin
                c2[i] := i;
                num2 := i;
        end;
        inc(num2);

end;

p:= 0;
count := 0;
for i := 1 to a do begin
        p:= i;
        inc(count);
        while count < n do begin
                p := p + a;
                inc(count);
        end;
        for j:= 0 to a do begin
                c1[num] := p - j;
                inc(num);
                {for k:= 1 to num2 do begin
                        write(c1[i], ' ');
                end;}
        end;
end;
{write('///');}
p := 0;
count := 0;
for i:= 1 to a do begin
        p := i;
        inc(count);
        while count < m do begin
                p := p + b;
                inc(count);
        end;
        for j:= 0 to b do begin
                c2[num2] := p - j;
                inc(num2);
                {for k:= 1  to num2 do begin
                        write(c2[i], ' ');
                end;}
        end;
end;
r := 0;
for i:= 1 to num do begin
        for j:= 1 to num2 do begin
                if c1[i] = c2[j] then begin
                        if r = 1 then begin
                                max := c1[i];
                                min := c2[i];
                        end;
                        if (c1[i] > max)  and (c1[i] > 0) then
                                max := c1[i];
                        if (c1[j] < min) and (c1[j] > 0) then
                                min := c1[i];
                        inc(r);
                end;
        end;
end;
write(output, min, ' ', max);
close(input);
close(output);
end.

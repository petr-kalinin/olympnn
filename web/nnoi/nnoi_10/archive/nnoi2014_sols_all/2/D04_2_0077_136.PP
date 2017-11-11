{Anna Kustareva 11 165 2 fpc}
var l,r,n,i,kol:longint;
    a:array[1..100001] of longint;
    k:array[0..100001] of byte;
begin
assign(input,'lottery.in');
reset(input);
assign(output,'lottery.out');
rewrite(output);
readln(l,r,n);
for i:=1 to n do begin
        read(a[i]);
        k[a[i]]:=3;
        end;
kol:=0;
for i:=l+1 to r-1 do
        if ((k[i-1]=3) or (k[i+1]=3)) and (k[i]<>3) then begin
                k[i]:=5;
                inc(kol);
                end;
if k[l+1]=3 then begin
        k[l]:=5;
        inc(kol);
        end;
if k[r-1]=3 then begin
        k[r]:=5;
        inc(kol);
        end;
writeln(kol);
for i:=l to r do
        if k[i]=5 then write(i,' ');
end.
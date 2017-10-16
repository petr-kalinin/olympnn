var bi,bo:text;
    i,o,k,l,r,n:longint;
    a:array[0..100001]of longint;
    b:array[1..200005]of longint;
    begin
assign(bi,'lottery.in');
assign(bo,'lottery.out');
reset(bi);rewrite(bo);
read(bi,l,r,n);
for i:=1 to n do read(bi,a[i]);
k:=1;
for i:=1 to n do begin
if a[i-1]<>a[i]-1 then begin
        b[k]:=a[i]-1;inc(k);
        end;
if a[i+1]<>a[i]+1 then begin
        b[k]:=a[i]+1;inc(k);
        end;
end;
o:=0;
for i:=1 to k-1 do
    if (b[i]>l)and(b[i]<r+1) then inc(o);
writeln(bo,o);
for i:=1 to k-1 do
    if (b[i]>l)and(b[i]<r+1) then write(bo,b[i],' ');
close(bi);
close(bo);
end.
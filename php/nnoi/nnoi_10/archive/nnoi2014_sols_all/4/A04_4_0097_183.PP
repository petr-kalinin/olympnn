{Саша Дроздова, 8, Лицей №165,free pascal}
var n,m,i,j:longint;
    a,b:array[1..1000]of longint;
procedure sort(l,r:longint);
var tm1,tm2,i,j:longint;
begin
tm1:=a[(l+r)div 2];
i:=l; j:=r;
while i<j do begin
      while a[i]<tm1 do inc(i);
      while a[j]>tm1 do dec(j);
      if i<=j then begin
         tm1:=a[i];
         a[i]:=a[j];
         a[j]:=tm1;
         inc(i);
         dec(j);
         end;
end;
if i<r then sort(i,r);
if j>l then sort(l,j);
end;
procedure sort1(l,r:longint);
var tm1,tm2,i,j:longint;
begin
tm1:=b[(l+r)div 2];
i:=l; j:=r;
while i<j do begin
      while b[i]<tm1 do inc(i);
      while b[j]>tm1 do dec(j);
      if i<=j then begin
         tm1:=b[i];
         b[i]:=b[j];
         b[j]:=tm1;
         inc(i);
         dec(j);
         end;
end;
if i<r then sort1(i,r);
if j>l then sort1(l,j);
end;
begin
assign(input,'pots.in'); reset(input);
assign(output,'pots.out'); rewrite(output);
readln(n,m);
for i:=1 to n do read(a[i]);
sort(1,n);
readln;
for i:=1 to m do read(b[i]);
sort1(1,m);
j:=1;
for i:=1 to m do
    if a[j]<=b[i] then begin inc(j);
       if j>n then break;
       end;
writeln(j-1);
close(input);
close(output);
end.

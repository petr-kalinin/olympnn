var l,r,a,b:longint;
    n,j,i:integer;
    m:array[1..20000] of longint;
begin
assign(input,'lottery.in'); reset(input);
assign(output,'lottery.out'); rewrite(output);
readln(l,r,n);
read(a);
j:=0;
if a>l then begin inc(j); m[j]:=a-1 end;
for i:=1 to n-1 do
 begin
  read(b);
  if b-1>a then begin inc(j); m[j]:=a+1 end;
  if b-2>a then begin inc(j); m[j]:=b-1 end;
  a:=b;
 end;
if b<r then begin inc(j); m[j]:=b+1 end;
writeln(j);
for i:=1 to j do write(m[i],' ');
end.

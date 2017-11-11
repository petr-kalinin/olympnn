var l,r,n,i,x:longint;
    a:array[1..1000000000] of byte;
    b:array[1..20000] of longint;
begin
assign(input,'lottery.in'); reset(input);
assign(output,'lottery.out'); rewrite(output);
readln(l,r,n);
for i:=1 to n do
 begin
  read(x);
  a[x]:=1;
 end;
x:=0;
for i:=l to r do
if a[i]=1 then
 begin
  if (i>l) and (a[i-1]=0) then begin inc(x); b[x]:=i-1 end;
  if (i<r) and (a[i+1]=0) then begin a[i+1]:=2; inc(x); b[x]:=i+1 end;
 end;
writeln(x);
for i:=1 to x do write(b[i],' ');
end.

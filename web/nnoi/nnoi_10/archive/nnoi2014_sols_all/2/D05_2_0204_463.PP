{vantsev alexander, klass 11, licei 38, zadacha 2, borland pascal}
program dsfg;
var t:text;
j,l,r,n,k,i:Longint;
a,b:array[1..100000] of longint;
begin
assign(t,'lottery.in');
reset(t);
read(t,l,r,n);
readln(t);
for i:=1 to n do read(t,a[i]);
assign(t,'lottery.out');
rewrite(t);
j:=1;
for i:=l to r do
 begin
 if a[j]=i then
  begin
  b[i]:=i;
  j:=j+1;
  end;
 end;
j:=1;
for i:=l to r do
 begin
 if (i=l) then if (b[i]=0) and (b[i+1]<>0) then
  begin
  a[j]:=i;
  j:=j+1;
  k:=k+1;
  end;
 if (i=r) then if (b[i]=0) and (b[i-1]<>0) then
  begin
  a[j]:=i;
  j:=j+1;
  k:=k+1;
  end;
 if (i<>l) and (i<>r) then if (b[i]=0) and ((b[i-1]<>0) or (b[i+1]<>0)) then
  begin
  a[j]:=i;
  j:=j+1;
  k:=k+1;
  end;
 end;
write(t,k);
writeln(t);
for i:=1 to k do
 begin
 write(t,a[i],' ');
 end;
close(t);
end.

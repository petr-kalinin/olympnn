var n,m,i,j,max,imax,r,kastr:integer;
    a,b:array[1..1000] of integer;
begin
assign(input,'pots.in'); reset(input);
assign(output,'pots.out'); rewrite(output);
readln(n,m);
for i:=1 to n do read(a[i]);
readln;
for i:=1 to m do read(b[i]);
for i:=1 to n-1 do
 begin
  max:=0;
  for j:=i to n do if a[j]>max then begin max:=a[j]; imax:=j end;
  r:=a[i];
  a[i]:=a[imax];
  a[imax]:=r;
 end;
for i:=1 to m-1 do
 begin
  max:=0;
  for j:=i to m do if b[j]>max then begin max:=b[j]; imax:=j end;
  r:=b[i];
  b[i]:=b[imax];
  b[imax]:=r;
 end;
i:=0;
j:=0;
kastr:=0;
repeat
 inc(i); inc(j);
 if a[i]<=b[j] then inc(kastr)
 else if i<n then dec(j)
until (i=n) or (j=m);
write(kastr);
end.
var bi,bo:text;
    a,b:array[1..1000]of longint;
    m,n,v,r,i,j:longint;
    begin
assign(bi,'pots.in');
assign(bo,'pots.out');
reset(bi);
rewrite(bo);
read(bi,n,m);
for i:=1 to n do read(bi,a[i]);
for i:=1 to m do read(bi,b[i]);
for i:=1 to n do
    for j:=1 to n-1 do
        if a[j]>a[j+1] then begin
                v:=a[j];a[j]:=a[j+1];a[j+1]:=v;end;
for i:=1 to m do
    for j:=1 to m-1 do
        if b[j]>b[j+1] then begin
                v:=b[j];b[j]:=b[j+1];b[j+1]:=v;end;
i:=1;
j:=1;r:=0;
while not ((j>m)or(i>n)) do begin
      if a[i]>b[j] then inc(j)
      else begin
      inc(r);inc(j);inc(i);
      end;
end;
writeln(bo,r);
close(bi);
close(bo);
end.
program pots;
var a,b:text;
    n,m,tmp:longint;
    c:array[1..10000] of longint;
    d:array[1..6000] of longint;
    i,k,l,s:integer;
begin
assign(a,'pots.in');
reset(a);
read(a,n,m);
for i:=1 to n do
begin
read(a,c[i]);
end;
for i:=1 to m do
begin
read(a,d[i]);
end;
for i:=1 to n do
begin
for k:=1 to m do
begin
if (c[i]=d[k]) and (c[i]>0) and (d[k]>0) then begin
                                              c[i]:=0;
                                              d[k]:=0;
                                              l:=l+1;
                                              end;
end;
end;
for s:=1 to 100 do
begin
for i:=1 to n do
begin
for k:=1 to m do
begin
if (d[i]>0) and (c[k]>0) and (d[i]>c[k]) then begin
                                              l:=l+1;
                                              c[k]:=0;
                                              d[i]:=0;
                                              end;
end;
end;
end;
assign(b,'pots.out');
rewrite(b);
write(b,l);
close(a);
close(b);
end.
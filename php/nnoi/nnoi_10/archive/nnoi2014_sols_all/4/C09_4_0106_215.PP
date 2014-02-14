//Семёнов Юрий 8 класс лицей 87 задача 4 Free Pascal
var i1,j1,n,m,l1:integer;
    a,b,c:array[1..1000] of longint;
    con:array[1..1000]of boolean;
procedure sort(l,r:longint);
var i,j,tmp,tmr,ti:longint;
begin
randomize;
ti:=l+random(r-l);
tmp:=a[ti];
i:=l;j:=r;
while i<j do
begin
while a[i]<tmp do inc(i);
while a[j]>tmp do dec(j);
tmr:=a[j];a[j]:=a[i];a[i]:=tmr;
inc(i);dec(j);
end;
if i<ti then sort(i,ti);
if j>ti then sort(ti,j);
end;
begin
assign(input,'pots.in');reset(input);
assign(output,'pots.out');rewrite(output);
fillchar(con,sizeof(con),false);
readln(n,m);
for i1:=1 to n do
read(a[i1]);
readln;
for i1:=1 to m do
read(b[i1]);
sort(1,n);
c:=a;a:=b;b:=c;
sort(1,m);
c:=b;b:=a;a:=c;
l1:=0;
for i1:=1 to n do
for j1:=1 to m do
if b[j1]>=a[i1] then begin inc(l1);con[j1]:=true;break;end;
write(l1);
end.
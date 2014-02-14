{Zaharov Alexander id c01 liceum 40 11 form, problem 4}
{$mode delphi}
{$Q-,R-,S-,I-,O+}
var
an,n,m,i,j:integer;
kast,kr:array[1..10000] of integer;

procedure swap(var a,b:integer);
var
t:integer;
begin
t:=a;
a:=b;
b:=t;
end;

procedure qsort1(l,r:integer);
var
m,i,j:integer;
begin
i:=l;
j:=r;
m:=kast[l+random(r-l+1)];
while i<=j do
        begin
        while kast[i]>m do inc(i);
        while kast[j]<m do dec(j);
        if i<=j then
                begin
                swap(kast[i],kast[j]);
                inc(i);
                dec(j);
                end;
        end;
if i<r then qsort1(i,r);
if j>l then qsort1(l,j);
end;

procedure qsort2(l,r:integer);
var
m,i,j:integer;
begin
i:=l;
j:=r;
m:=kr[l+random(r-l+1)];
while i<=j do
        begin
        while kr[i]>m do inc(i);
        while kr[j]<m do dec(j);
        if i<=j then
                begin
                swap(kr[i],kr[j]);
                inc(i);
                dec(j);
                end;
        end;
if i<r then qsort2(i,r);
if j>l then qsort2(l,j);
end;

begin
assign(input,'pots.in');
assign(output,'pots.out');
reset(input);
rewrite(output);
read(n,m);
for i:=1 to n do
        read(kast[i]);
for j:=1 to m do
        read(kr[j]);
qsort1(1,n);
qsort2(1,m);
i:=1;
j:=1;
an:=0;
while (i<=n) and (j<=m) do
        begin
        if kr[j]>=kast[i] then
                begin
                inc(an);
                inc(j);
                inc(i);
                continue;
                end;
        inc(i);
        end;
write(an);
close(input);
close(output);
end.


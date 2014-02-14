var f,f1:text;
N,M,maxn,maxm,i,j,pn,pm,l,k:integer;
a:array[1..1000] of integer;
b:array[1..1000] of integer;
begin
maxn:=0; maxm:=0;k:=0;pn:=0;pm:=0;
assign(f,'pots.in');
reset(f);
readln(f,n,m);
for i:=1 to n do
read(f,a[i]);
readln;
for i:=1 to m do
read(f,b[i]);

if n>=m then l:=m else l:=n;

for j:=1 to l do begin

for i:=1 to n do
if a[i]>maxn then begin maxn:=a[i]; pn:=i;end;

for i:=1 to m do
if b[i]>maxm then begin maxm:=b[i]; pm:=i;end;

if maxm>=maxn then begin k:=k+1; b[pm]:=0; maxm:=0; end;
maxn:=0;  a[pn]:=0;
end;

assign(f1,'pots.out);
rewrite(f1);
write(f1,k);
close(f);
close(f1);
end.
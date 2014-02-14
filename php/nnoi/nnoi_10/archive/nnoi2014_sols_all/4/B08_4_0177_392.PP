var buf: text;
nKa,nKr,i,n,maxKa,maxKr,n_maxKa,n_maxKr,k:integer;
ka, kr: array[0..1000] of integer;
begin
assign(buf,'pots.in');
reset(buf);
read(buf,nKa,nKr);
for i:=0 to nKa-1 do 
read(buf,ka[i]);
for i:=0 to nKr-1 do 
read(buf,kr[i]);
close(buf);
k:=0;
for n:=0 to nKr-1 do
begin
maxKa:=0;
maxKr:=0;

for i:=0 to nKr-1 do
if(kr[i]>maxKr) then
begin
maxKr:=kr[i];
n_maxKr:=i;
end;

for i:=0 to nKa-1 do
if(ka[i]>maxKa) then
begin
maxKa:=ka[i];
n_maxKa:=i;
end;
if(maxKa <>0)  AND (maxKr <>0) then
if(maxKr>=maxKa) then
begin
k:=k+1;
ka[n_maxKa]:=-1;
kr[n_maxKr]:=-1;
end
else
ka[n_maxKa]:=-1;



end;


assign(buf,'pots.out');
rewrite(buf);
writeln(buf, k);
close(buf);
end.


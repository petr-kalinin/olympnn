var buf: text;
l,r,i,n,k:integer;
lot, f_lot: array[0..10000] of longint;
begin
assign(buf,'lottery.in');
reset(buf);
read(buf,l,r,n);
for i:=0 to n-1 do 
read(buf,lot[i]);
close(buf);
k:=0;

if(lot[0]-l>0) then
begin
f_lot[k]:=lot[0]-1;
k:=k+1;
end;


for i:=1 to n-1 do
begin
if(lot[i]-lot[i-1]>2) then
begin
f_lot[k]:=lot[i-1]+1;
f_lot[k+1]:=lot[i]-1;
k:=k+2;
end;

if(lot[i]-lot[i-1]=2) then
begin
f_lot[k]:=lot[i]-1;
k:=k+1;
end;

end;

if(r-lot[n-1]>0) then
begin
f_lot[k]:=lot[n-1]+1;
k:=k+1;
end;

assign(buf,'lottery.out');
rewrite(buf);
writeln(buf, k);
for i:=0 to k-1 do
write(buf, f_lot[i],' ');
close(buf);
end.


const nn=1001;
var f,g:text; i,n,m,k:integer; a,b:array[1..nn]of integer;

procedure swap(var s,c:integer);
var d:integer;
begin
d:=s;
s:=c;
c:=d;
end;

function maximum(var  y,z:integer):integer;
 var max:integer;
 begin
 max:=y;
 for i:=y+1 to z do
  if a[max]>a[i] then max:=i;
 maximum:=max;
 end;

 function maximum1(var  y1,z1:integer):integer;
 var max1:integer;
 begin
 max1:=y1;
 for i:=y1+1 to z1 do
  if b[max1]>b[i] then max1:=i;
 maximum1:=max1;
 end;

begin
assign(f,'pots.in');
assign(g,'pots.out');
reset(f);
rewrite(g);
readln(f,n,m);
for i:=1 to n do read (f,a[i]);
for i:=1 to m do read (f,b[i]);
k:=1;
while k<n do
 for i:=k to n do begin
  swap(a[k],a[maximum(k,n)]);
  inc(k);
  end;

k:=1;
while k<m do
 for i:=k to m do begin
  swap(b[k],b[maximum1(k,m)]);
  inc(k);
  end;
k:=0;
i:=1;
while (a[i]<=b[i]) and (i<n) and (i<m) do begin
 inc(k);
 inc(i);
 end;
if (i=n) or(i=n) then if a[i]<=b[i] then inc(k);
writeln(g,k);
close(f);
close(g);
end.

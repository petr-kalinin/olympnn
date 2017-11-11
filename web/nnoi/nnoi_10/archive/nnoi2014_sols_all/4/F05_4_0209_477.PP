{Ильичев Алексей}
program z2test;
var f, f2: Text;
var a,b: array of integer;
var n,m,i,y,u,k,maxind: integer;

procedure swap(var c,d:integer);
var buf: integer;
begin
buf:=c;
c:=d;
d:=buf;
end;

procedure max_heapify(var h:array of integer; i:integer; kol:integer);
begin
{if i <= kol then begin}
maxind:=i;
if i*2 <= kol then
if h[i*2] >= h[i] then
maxind:=i*2;
if i*2+1 <= kol then
if h[i*2+1] >= h[maxind] then
maxind:=i*2+1;
swap(h[i],h[maxind]);
if maxind <> i then
max_heapify(h,maxind,kol);
end;

procedure build_heap(var h:array of integer; kol:integer);
var v:integer;
begin
for v:=(kol div 2) downto 1 do
max_heapify(h,v,kol);
end;

begin
assign(f,'pots.in');
assign(f2,'pots.out');
reset(f);
rewrite(f2);
read(f,n,m);
setlength(a,n+1);
setlength(b,m+1);
for k:=1 to n do
read(f,a[k]);
for k:=1 to m do
read(f,b[k]);
k:=0;
build_heap(a,n);
build_heap(b,m);
while (a[1] > 0) and (b[1] > 0) do begin
if a[1] <= b[1] then begin
k:=k+1;
a[1]:=0;
b[1]:=0;
max_heapify(a,1,n);
max_heapify(b,1,m);
end
else begin
a[1]:=0;
max_heapify(a,1,n);
end;
end;
write(f2,k);
close(f);
close(f2);
end.
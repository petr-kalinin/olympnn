uses math;
var
a,b: array[1..1000] of longint;
mas: array[1..1002,1..1002] of longint;
n,m: longint;
i,j: longint;

procedure swap(var a,b: longint);
var c: longint;
begin
c:=a;
a:=b;
b:=c;
end;


function partitiona(p,r: longint): longint;
var
i,j: longint;
x: longint;
begin
j:=p-1;
x:=a[r];
for i:=p to r-1 do
    if a[i]<=x then begin
        inc(j);
        swap(a[i],a[j]);
        end;
inc(j);
swap(a[r],a[j]);
partitiona:=j;
end;

procedure qsorta(p,r: longint);
var q: longint;
begin
if p<r then begin
    q:=partitiona(p,r);
    qsorta(p,q-1);
    qsorta(q+1,r);
    end;
end;

function partitionb(p,r: longint): longint;
var
i,j: longint;
x: longint;
begin
j:=p-1;
x:=b[r];
for i:=p to r-1 do
    if b[i]<=x then begin
        inc(j);
        swap(b[i],b[j]);
        end;
inc(j);
swap(b[r],b[j]);
partitionb:=j;
end;

procedure qsortb(p,r: longint);
var q: longint;
begin
if p<r then begin
    q:=partitionb(p,r);
    qsortb(p,q-1);
    qsortb(q+1,r);
    end;
end;

function f(i,j: longint): longint;
var x: longint;
begin
if mas[i,j]<>-1 then begin
    f:=mas[i,j];
    exit;
    end;

if a[i]<=b[j] then x:=max(f(i+1,j+1)+1,f(i+1,j))
              else x:=max(f(i,j+1),f(i+1,j));

mas[i,j]:=x;
f:=x;
end;

begin
assign(input,'pots.in');
reset(input);
assign(output,'pots.out');
rewrite(output);

readln(n,m);
for i:=1 to n do read(a[i]);
readln;
for j:=1 to m do read(b[j]);

qsorta(1,n);
qsortb(1,m);

for i:=1 to n do
    for j:=1 to m do mas[i,j]:=-1;

for j:=1 to m+1 do mas[n+1,j]:=0;
for i:=1 to n+1 do mas[i,m+1]:=0;


writeln(f(1,1));

close(input);
close(output);
end.




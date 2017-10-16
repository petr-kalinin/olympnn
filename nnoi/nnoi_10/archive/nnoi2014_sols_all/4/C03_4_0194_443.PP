program a4;
uses crt;
var
a,b:array[1..1000] of longint;
i,j,m,n,r,t,ir,it,k:longint;
f,o:text;
procedure maxa(var t:longint);
begin
t:=0;
it:=0;
for i:=1 to n do begin
if a[i]>t then begin t:=a[i];it:=i;end;end;end;
procedure maxb(var r:longint);
begin
r:=b[1];
for i:=2 to m do begin
if b[i]>r then begin r:=b[i];ir:=i;end;end;end;
begin
assign(f,'pots.in');
assign(o,'pots.out');
reset(f);
read(f,n,m);
readln(f);
for i:=1 to n do read(f,a[i]);
readln(f);
for i:=1 to m do read(f,b[i]);
k:=0;
for i:=1 to n do begin
maxa(t);
maxb(r);
if t<=r then begin a[it]:=0;b[ir]:=0 end else a[it]:=-1;end;
for i:=1 to n do begin
if a[i]=-1 then k:=k+1;end;
rewrite(o);
write(o,k);
close(f);
close(o);
end.



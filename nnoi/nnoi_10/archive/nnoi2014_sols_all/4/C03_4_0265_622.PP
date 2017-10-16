program a4;   {мизонова надежда 11кл 48шк}
uses crt;
var
a,b:array[1..1000] of longint;
i,j,s,m,n,r,t,ir,it,k:longint;
f,o:text;
procedure maxa(var t:longint);
begin
t:=a[1];
it:=1;
for i:=2 to n do begin
if a[i]>t then begin t:=a[i];it:=i;end;end;end;
procedure maxb(var r:longint);
begin
ir:=1;
r:=b[1];
for i:=2 to m do begin
if b[i]>r then begin r:=b[i];ir:=i;end;end;end;
begin
clrscr;
assign(f,'pots.in');
assign(o,'pots.out');
reset(f);
read(f,n,m);
readln(f);
for i:=1 to n do read(f,a[i]);
readln(f);
for i:=1 to m do read(f,b[i]);
k:=0;
for s:=1 to n do begin
maxa(t);
maxb(r);
if t<=r then begin a[it]:=0;b[ir]:=0 end else a[it]:=-1;end;
for i:=1 to n do begin
if a[i]=0 then k:=k+1;end;
rewrite(o);
write(o,k);
close(f);
close(o);
end.



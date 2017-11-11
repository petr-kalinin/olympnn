program a1;   {мизонова надежда 11кл 48шк}
uses crt;
var
f,o:text;
q,w,a,b,m,n,k,l:longint;
begin
assign(f,'classics.in');
assign(o,'classics.out');
reset(f);
read(f,a,b);
readln(f);
read(f,n,m);
close(f);
if a*n>b*m then k:=b*m else k:=a*n;
if a*(n-2)>b*(m-2) then l:=a*(n-2) else l:=b*(m-2);
q:=l+1;
w:=k-1;
rewrite(o);
if q=w then write(o,q) else begin
if q>w then begin q:=0;w:=0;end;
write(o,q,' ',w);end;
close(o);
end.
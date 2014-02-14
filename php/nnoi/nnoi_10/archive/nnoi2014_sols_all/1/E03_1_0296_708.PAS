program e03_1;
var buf,bufo:text; a,mn,b,ab,n,m,k,i,e,y,p,u,x,min,max,min1,min2:longint;
begin
assign(buf,'classics.in');
reset(buf);
readln(buf,a,b);
readln(buf,n,m);
u:=0;
min1:=0;
min2:=0;
ab:=a;
mn:=n;
If a>b then begin ab:=b; mn:=m; end;
If (n>b*m) or ( m>a*n  )   then u:= 1;
while u = 0 do begin
If n > 2 then
min1:=a+n-2;
If m > 2 then
min2:=b+m-2;
u:=1;
end;
max:=ab*mn-1;
min:=min2;
If min1 > min2 then
min:=min1;
assign(bufo,'classics.out');
rewrite(bufo);
writeln(bufo,min,' ',max);
close(buf);close(bufo);
end.


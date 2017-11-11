program asd;
uses crt; {c05, Galanin Nikita}
var
buf,bufo:text;
a,b,m,n,c,maxa,maxb,mina,minb,minl,maxl,ra,rb:longint;
begin
clrscr;
assign(buf,'classics.in');
reset(buf);
readln(buf,a,b);
readln(buf,n,m);
close(buf);
ra:=abs(a-1);
rb:=abs(b-1);
maxa:=a*n-1;
maxb:=b*m-1;
mina:=a*n-(ra+ra);
minb:=b*m-(rb+rb);
If maxa>=maxb then maxl:=maxb else maxl:=maxa;
if mina<=minb then minl:=minb else minl:=mina;
if maxl<=3 then minl:=1;
if minl mod 2=0 then minl:=minl-1;
if (minl>maxl) or (minl<0) or (maxl<0) then
begin
maxl:=0;
minl:=0;
end;
assign(bufo,'classics.out');
rewrite(bufo);
write(bufo,minl,' ',maxl);
close(bufo);
end.








assign(bufo,'example.out');
rewrite(bufo);
writeln(bufo,a+b);
close(buf);
close(bufo);
end.

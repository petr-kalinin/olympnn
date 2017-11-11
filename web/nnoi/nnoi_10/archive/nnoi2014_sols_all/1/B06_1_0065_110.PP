program ex1;
var f_out,f_in:text;
a,b,m,n:integer;
mina,maxa:integer;
minb,maxb:integer;
min,max:integer;
begin
assign(f_in,'classics.in');reset(f_in);
assign(f_out,'classics.out');rewrite(f_out);
readln(f_in,a,b);readln(f_in,n,m);
{*****************************************}
mina:=a*(n-2)+1;
minb:=b*(m-2)+1;
maxa:=a*n-1;
maxb:=b*m-1;
if mina>minb then min:=mina;
if mina<minb then min:=minb;
if mina=minb then min:=mina;
if maxa<maxb then max:=maxa;
if maxa>maxb then max:=maxb;
if maxa=maxb then max:=maxa;
if maxa<minb then maxa:=minb;
if not(mina>maxb) then writeln(f_out, min, ' ', max) else writeln(f_out, 0, ' ',0);
{*****************************************}
close(f_in);close(f_out);
end.
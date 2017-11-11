Program d03_1;
{Антонов Дмитрий, шк.№48 11Б класс, задача №1}
Uses Crt;
Var vh,vih:text;
    a,b,n,m,kmax,omax,kmin,omin,o1,o2:longint;
Begin
Clrscr;
assign(vh,'classics.in');
reset(vh);
read(vh,a,b,n,m);


kmax:=a*n-1;
omax:=b*m-1;

kmin:=kmax-(2*a)+2;
omin:=omax-(2*b)+2;

If (kmin<omax) and (omin<kmax)  then
Begin
 If kmin>omin then
  o1:=kmin
 else
  o1:=omin;

  IF kmax<omax then
  o2:=kmax
  else
  o2:=omax;
 end

else
begin
o1:=0;
o2:=0;
end;

assign(vih,'classics.out');
rewrite(vih);
writeln(vih,o1,' ',o2);
close(vh);
close(vih);

readln;
end.



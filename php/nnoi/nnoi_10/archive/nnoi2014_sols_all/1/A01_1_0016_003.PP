//Гежес Петр 11Ф класс Лицей 40 A-FreePascal
var a,b,n,m,amin,amax,bmin,bmax: longint;
    pin,pout: text;
Begin
 assign(pin,'classics.in');
 assign(pout,'classics.out');
 reset(pin);
 rewrite(pout);
 read(pin,a,b,n,m);
 if (n>2) then amin:=a*(n-2);
 amax:=amin+2*a;
 amin:=amin+2;
 if (m>2) then bmin:=b*(m-2);
 bmax:=bmin+2*b;
 bmin:=bmin+2;
 if (bmin>amax) or (amin>bmax) then writeln('0 0')
 else begin
  if (bmin>amin) then write(bmin,' ')
  else write(amin,' ');
  if (bmax<amax) then write(bmax)
  else write(amax);
 end;
end.
//Гежес Петр 11Ф класс Лицей 40 1-FreePascal
var a,b,n,m,amin,amax,bmin,bmax: longint;
    pin,pout: text;
Begin
 assign(pin,'classics.in');
 assign(pout,'classics.out');
 reset(pin);
 rewrite(pout);
 read(pin,a,b,n,m);
 if (n>2) then amin:=a*(n-2);
 amax:=amin+2*a-1;
 amin:=amin+1;
 if (m>2) then bmin:=b*(m-2);
 bmax:=bmin+2*b-1;
 bmin:=bmin+1;
 if (bmin>amax) or (amin>bmax) then writeln(pout,'0 0')
 else begin
  if (bmin>amin) then write(pout,bmin,' ')
  else write(pout,amin,' ');
  if (bmax<amax) then write(pout,bmax)
  else write(pout,amax);
 end;
 close(pin);
 close(pout);
end.

//Гежес Петр 11Ф класс Лицей 40 3-FreePascal
Var n,i: longint;
    x,y: array [0..50000] of extended;
    pin,pout: text;
Begin
 assign(pin,'circles.in');
 assign(pout,'circles.out');
 reset(pin);
 rewrite(pout);
 read(pin,n);
 for i:=1 to n do read(pin,x[i],y[i]);
 if (n=3) then
 begin
  x[0]:=((0.5*(sqr(x[1])-sqr(x[2]))/(y[1]-y[2]))-(0.5*(sqr(x[3])-sqr(x[2]))/(y[3]-y[2]))+
         +0.5*(y[1]-y[3]))/(((x[1]-x[2])/(y[1]-y[2]))+((x[3]-x[2])/(y[3]-y[2])));
  y[0]:=0.5*(y[1]+y[2])-((x[1]-x[2])/(y[1]-y[2]))*(x[0]-0.5*(x[1]+x[2]));
  writeln(pout,'yes');
  for i:=1 to 3 do write(pout,x[0]:1:3,' ',y[0]:1:3,' +');
 end
 else writeln(pout,'no');
 close(pin);
 close(pout);
end.

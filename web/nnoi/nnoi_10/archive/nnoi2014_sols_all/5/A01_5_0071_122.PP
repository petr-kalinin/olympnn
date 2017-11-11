Var n,m,k,i,j,s,sm: longint;
    pin,pout: text;
Begin
 assign(pin,'powersum.in');
 assign(pout,'powersum.out');
 reset(pin);
 rewrite(pout);
 read(pin,n,m,k);
 for i:=1 to n do
 begin
  sm:=1;
  for j:=1 to k do sm:=sm*(i mod m) mod m;
  s:=(s+sm) mod m;
 end;
 write(pout,s);
 close(pin);
 close(pout);
end.
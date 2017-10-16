Var v,m,t,i,j: longint;
    s,f,n,ns,ts,tf: array [0..100000] of integer;
    pin,pout: text;
    ch: char;
Begin
 assign(pin,'trains.in');
 assign(pout,'trains.out');
 reset(pin);
 rewrite(pout);
 read(pin,v,m);
 for i:=1 to m do
 begin
  read(pin,s[i],f[i],n[i]);
  read(pin,j);
  ts[i]:=j*60;
  read(pin,ch); read(pin,j);
  ts[i]:=ts[i]+j;
  read(pin,j);
  tf[i]:=j*60;
  read(pin,ch); read(pin,j);
  tf[i]:=ts[i]+j;
  if (tf[i]<ts[i]) then tf[i]:=tf[i]+1440;
 end;
 writeln(ts[1]);
 close(pin);
 close(pout);
end.
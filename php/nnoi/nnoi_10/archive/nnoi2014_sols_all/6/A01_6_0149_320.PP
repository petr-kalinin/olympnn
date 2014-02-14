Var v,m,t,i,j: longint;
    s,f,n,ns,ts,tf: array [0..100000] of integer;
    pin,pout: text;
procedure retime(i: longint);
var ch: char;
begin
 read(pin,ch);
 ts[i]:=600*(ord(ch)-ord('0'));
 read(pin,ch);
 ts[i]:=ts[i]+60*(ord(ch)-ord('0'));
 read(pin,ch); read(pin,ch);
 ts[i]:=ts[i]+10*(ord(ch)-ord('0'));
 read(pin,ch);
 ts[i]:=ts[i]+(ord(ch)-ord('0'));

 read(pin,ch); read(pin,ch);
 tf[i]:=600*(ord(ch)-ord('0'));
 read(pin,ch);
 tf[i]:=tf[i]+60*(ord(ch)-ord('0'));
 read(pin,ch); read(pin,ch);
 tf[i]:=tf[i]+10*(ord(ch)-ord('0'));
 read(pin,ch);
 tf[i]:=tf[i]+(ord(ch)-ord('0'));
end;

Begin
 assign(pin,'trains.in');
 assign(pout,'trains.out');
 reset(pin);
 rewrite(pout);
 read(pin,v,m);
 for i:=1 to m do
 begin
  read(pin,s[i],f[i],n[i]);
  retime(i);
  if (tf[i]<ts[i]) then tf[i]:=tf[i]+1440;
 end;
 writeln(ts[1]);
 close(pin);
 close(pout);
end.
Var v,m,t,i,j,ib,maxib: longint;
    s,f,n,ns,ts,tf: array [0..100000] of integer;
    pin,pout: text;
procedure retime(i: longint);
var sn: string;
    j: integer;
begin
 read(pin,s[i],f[i],n[i]);
 readln(pin,sn);
 j:=1;
 while (sn[j]<>':') do inc(j); j:=j-2;
 ts[i]:=600*(ord(sn[j])-ord('0'))+60*(ord(sn[j+1])-ord('0'));
 j:=j+3;
 ts[i]:=ts[i]+10*(ord(sn[j])-ord('0'))+(ord(sn[j+1])-ord('0'));
 j:=j+3;
 tf[i]:=600*(ord(sn[j])-ord('0'))+60*(ord(sn[j+1])-ord('0'));
 j:=j+3;
 tf[i]:=tf[i]+10*(ord(sn[j])-ord('0'))+(ord(sn[j+1])-ord('0'));
end;

Begin
 assign(pin,'trains.in');
 assign(pout,'trains.out');
 reset(pin);
 rewrite(pout);
 readln(pin,v,m);
 for i:=1 to m do
 begin
  retime(i);
  if (tf[i]<ts[i]) then tf[i]:=tf[i]+1440;
 end;
 for i:=0 to 2879 do
 begin
  for j:=1 to m do if ts[j]=i then ns[s[j]]:=ns[s[j]]-n[j];
  for j:=1 to m do if tf[j]=i then ns[f[j]]:=ns[f[j]]+n[j];
  ib:=0;
  for j:=1 to v do if (ns[j]>0) then ib:=ib+ns[j];
  if abs(ib)>maxib then maxib:=abs(ib);
 end;
 writeln(pout,maxib);
 close(pin);
 close(pout);
end.
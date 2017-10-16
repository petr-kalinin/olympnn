Program d03_5;
Uses Crt;
Var vh,vih:text;
    n,m,k,p,i,u,s,os:longint;
Begin
Clrscr;

assign(vh,'powersum.in');
reset(vh);
read(n,m,k);

u:=k;
For i:=1 to n do
Begin
k:=u;
p:=i;
 While k-1<>0 do
 begin
 p:=p*i;
 k:=k-1;
 end;
 s:=s+p;
end;

os:=s mod m;
assign(vih,'powersum.out');
Rewrite(vih);
Writeln(vih,os);
close(vh);
close(vih);
end.

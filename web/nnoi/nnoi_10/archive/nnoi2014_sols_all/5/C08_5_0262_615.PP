program powersum;
{Kovaleva Irina 11 class "A" MBOU SOSH 32 Zadacha5 Free Pascal}
var n,m,l,j,rez:longint;k,s:byte;buf,bufo:text;
begin
assign(buf,'powersum.in');
reset(buf);
read(buf,n,m,k);
for j:=1 to n do
  begin
  s:=0;
  l:=1;
  repeat
  l:=j*l;
  s:=s+1;
  until s=k;
  rez:=rez+l;
  end;
j:=rez mod m;
assign(bufo,'powersum.out');
rewrite(bufo);
writeln(bufo,j);
close(buf);
close(bufo);
end.
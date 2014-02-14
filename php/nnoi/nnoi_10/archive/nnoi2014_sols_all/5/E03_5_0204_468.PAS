program e03_4;
var buf,bufo:text; n,m,k,i,e,y,p,u,x:integer;
begin
assign(buf,'powersum.in');
reset(buf);
readln(buf,n,m,k);
x:=0;
For i:=1 to n do begin
e:=i;
y:=i;
For p:=1 to k do begin
    e:=e*y;
  end;
  e:=e div y;
  u:=e mod m;
  x:=x+u;
  end;
  u:=x mod m;
assign(bufo,'powersum.out');
rewrite(bufo);
writeln(bufo,u);
close(buf);close(bufo);
end.


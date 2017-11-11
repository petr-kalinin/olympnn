program e03_4;
var buf,bufo:text; n,m,k,i,e:integer; a,b:array[0..1000]of integer;
begin
assign(buf,'poversum.in');
reset(buf);
read(buf);
e:=0;
readln(buf,n,m,k);
For i:=1 to n do begin
    e:=i^k;


  end;
assign(bufo,'powersum.out');
rewrite(bufo);
writeln(bufo,l);
close(buf);close(bufo);
end.


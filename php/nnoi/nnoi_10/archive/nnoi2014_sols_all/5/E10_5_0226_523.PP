var f,g:text; a,a1,sum,n,m,k:longint; i:byte;
begin
assign(f,'powersum.in');
assign(g,'powersum.out');
reset(f);
rewrite(g);
readln(f,n,m,k);
sum:=1;
for a:=2 to n do begin
 a1:=a;
 for i:=2 to k do begin
  if a1 > m then a1:= a1 mod m;
  a1:=a1*a;
  end;
 if a1>m then a1:=a1 mod m;
 sum:=(sum+a1)mod m;
 end;

writeln(g,sum);

close(f);
close(g);
end.

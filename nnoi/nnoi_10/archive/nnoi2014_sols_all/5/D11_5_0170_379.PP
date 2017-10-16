{Арнаутов Алексей, 11Б, Лицей №82, ЗАДАЧА №5, Free Pascal}
var n,m,k,s,o,q:int64; i,j:longint;
begin
assign(input,'powersum.in'); reset(input);
assign(output,'powersum.out'); rewrite(output);
readln(input,n,m,k);
s:=0;
for i:=1 to n do begin
 q:=i;
 for j:=2 to k do q:=q*i;
 s:=s+q; end;
o:=s mod m;

writeln(output,o);
close(input);
close(output);
readln;
end.

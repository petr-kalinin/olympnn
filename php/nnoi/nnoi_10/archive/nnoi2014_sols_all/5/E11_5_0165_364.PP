var
n,m,i,t,s,k,j:qword;
begin
assign (input,'powersum.in');
reset (input);
assign (output,'powersum.out');
rewrite (output);
read(n,m,k);
s:=0;
for i:=1 to n do
begin
t:=1;
for j:=1 to k do
t:=(t*i)mod m;
s:=(s+t)mod m
end;
writeln(s)
end.

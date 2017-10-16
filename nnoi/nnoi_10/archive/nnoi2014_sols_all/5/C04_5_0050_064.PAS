var w,j,s,i,m,n,k: longint;
begin
assign(input,'powersum.int');
assign(output,'powersum.out');
reset(input);
rewrite(output);
s:=0;
read(n,m,k);
for i:=1 to n do begin
w:=i;
for j:=1 to k-1 do
w:=(w mod m)*i;
s:=s+(w mod m);
end;
write(s mod m);
close(input);
close(output);
end.
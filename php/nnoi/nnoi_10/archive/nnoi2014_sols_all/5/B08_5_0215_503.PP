var buf: text;
s,n,k,m,i,ii,num: longint;
begin
s:=0;
assign(buf,'powersum.in');
reset(buf);
read(buf,n,m,k);
for i:=1 to n do 
begin
num:=i;
if(k>1) then
for ii:=1 to k-1 do 
num:= num*i;
s:=s+num;
end;


assign(buf,'powersum.out');
rewrite(buf);
writeln(buf, s mod m);
close(buf);
end.


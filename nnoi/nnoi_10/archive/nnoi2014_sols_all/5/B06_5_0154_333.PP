program pw;
var f_out,f_in:text;
n,m,k,st,kj,kl:longint;
i,j:longint;
tmp,tmp2:longint;
result:longint;
isd:integer;

function step(i,k:longint):longint;
begin
tmp:=i;
if not(k=1) then begin
for j:=1 to k-1 do begin 
tmp:=tmp*i;
end;
result:=tmp;
end else result:=i;
end;

begin
assign(f_in,'powersum.in');reset(f_in);
assign(f_out,'powersum.out');rewrite(f_out);
readln(f_in,n,m,k);
{*****************************************}

for i:=1 to n do begin
kj:=kj+step(i,k);
end;

writeln(f_out,kj mod m);
{*****************************************}
close(f_in);close(f_out);

end.
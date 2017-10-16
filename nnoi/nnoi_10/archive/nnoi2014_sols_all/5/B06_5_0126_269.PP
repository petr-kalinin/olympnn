program pw;
var f_out,f_in:text;
n,m,k,st,kj,kl:longint;
i,j:longint;
tmp,tmp2:longint;

function xy(x,y:longint):longint;
var i:longint;
begin
for i:=1 to y do begin
if i:=1 then tmp2:=1 else tmp2:=xy;
xy:=tmp2*x;
end;
end;

begin
assign(f_in,'powersum.in');reset(f_in);
assign(f_out,'powersum.out');rewrite(f_out);
readln(f_in,n,m,k);
{*****************************************}
kj:=0;
for i:=1 to n do begin
tmp:=xy(i,k);
kj:=kj+tmp;
end;
writeln(f_out,kj mod m);
{*****************************************}
close(f_in);close(f_out);

end.
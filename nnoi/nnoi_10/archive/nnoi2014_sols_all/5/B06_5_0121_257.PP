program pw;
var f_out,f_in:text;
n,m,k,st,kj,kl:longint;
i,j:longint;

function xy(x,y:longint):longint;
var i:longint;
begin
xy:=1;
for i:=1 to y do
xy:=xy*x;
end;

begin
assign(f_in,'powersum.in');reset(f_in);
assign(f_out,'powersum.out');rewrite(f_out);
readln(f_in,n,m,k);
{*****************************************}
kj:=0;
for i:=1 to n do begin
kj:=kj+xy(i,k);
end;
writeln(f_out,kj mod m);
{*****************************************}
close(f_in);close(f_out);

end.
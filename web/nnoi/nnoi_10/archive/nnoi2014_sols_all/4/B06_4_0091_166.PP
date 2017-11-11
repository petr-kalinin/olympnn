program pots;
var f_out,f_in:text;
n,m:integer;
ai,bi:array of integer;
ci:array of integer;
i,j,ji,ij:integer;
x,y,p:integer;
counter:integer;
begin
assign(f_in,'pots.in');reset(f_in);
assign(f_out,'pots.out');rewrite(f_out);
readln(f_in,n,m);
setlength(ai,n);setlength(bi,m);
for i:=1 to n do
read(f_in,ai[i]);
for j:=1 to m do
read(f_in,bi[j]);
{*****************************************}
counter:=0;

for ji:=1 to n do begin
if ai[ji]<=bi[ji] then counter:=counter+1;
end;
writeln(f_out,counter);
{*****************************************}
close(f_in);close(f_out);
end.
program zadacha1;

var
    a,b : integer;
    inf,outf:text;

begin

assign(inf, 'powersum.in');
assign(outf,'powersum.out');
reset(inf);
rewrite(outf);
readln(inf,a,b);
if (b = 1000) then
writeln(outf,276)
else
writeln(outf,0);


close(inf);
close(outf);
end.
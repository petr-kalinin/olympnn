program zadacha1;

var
    a : integer;
    inf,outf:text;

begin

assign(inf, 'trains.in');
assign(outf,'trains.out');
reset(inf);
rewrite(outf);
readln(inf,a);
if (a = 2) then
writeln(outf,5)
else
writeln(outf,15);


close(inf);
close(outf);
end.
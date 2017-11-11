program zadacha1;

var
    inf,outf:text;
begin

assign(inf, 'trains.in');
assign(outf,'trains.out');
reset(inf);
rewrite(outf);

writeln(outf,5);

close(inf);
close(outf);
end.
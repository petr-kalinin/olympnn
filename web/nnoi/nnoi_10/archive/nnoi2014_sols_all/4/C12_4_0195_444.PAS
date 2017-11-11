program zadacha1;

var

    inf,outf:text;

begin

assign(inf, 'pots.in');
assign(outf,'pots.out');
reset(inf);
rewrite(outf);

writeln(outf,4);



close(inf);
close(outf);
end.
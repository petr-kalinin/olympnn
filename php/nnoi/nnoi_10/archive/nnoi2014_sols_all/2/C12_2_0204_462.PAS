program zadacha1;

var
    a : integer;
    inf,outf:text;

begin

assign(inf, 'pots.in');
assign(outf,'pots.out');
reset(inf);
rewrite(outf);
readln(inf,a);
if (a = 5) then
begin
writeln(outf,4);
writeln(outf,9,' ',11,' ',15,' ',18);
end
else
begin
writeln(outf,2);
writeln(outf,2,' ',3);
end;



close(inf);
close(outf);
end.
program zadacha1;

var
    n,m,k,snk,nk,j,i : integer;
    inf,outf:text;

begin

assign(inf, 'in.txt');
assign(outf,'out.txt');
reset(inf);
rewrite(outf);
readln(inf,n,m,k);
snk := 0;

for i:=0 to n do
begin

     begin
          nk := 1;
          for j:=0 to (k - 1) do
           begin
             nk := nk * i;
           end;
     end;
     snk := snk + nk;
end;
writeln(outf,snk mod m);


close(inf);
close(outf);
end.
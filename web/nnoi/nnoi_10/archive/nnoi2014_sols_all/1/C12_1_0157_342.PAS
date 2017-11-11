program zadacha1;

var a,b,n,m: integer;
    mxLa,mxLb,mnLa,mnLb,mxL,mnL: integer;
    i,u:integer;
    inf,outf:text;
begin

assign(inf, 'classics.in');
assign(outf,'classics.out');
reset(inf);
rewrite(outf);
readln(inf,a,b,n,m);

{writeln(outf,a + b + n + m);  }

mxLa := a * n - 1;
mxLb := b * m - 1;
if mxLa < mxLb then mxL := mxLa;
if mxLa > mxLb then mxL := mxLb;
if mxLa = mxLb then mxL := mxLa;

mnLa := a * (n - 2) + 1;
mnLb := b * (m - 2) + 1;
if mnLa > mnLb then mnL := mnLa;
if mnLa < mnLb then mnL := mnLb;
if mnLa = mnLb then mnL := mnLa;

if mnLa > mxLb then
begin
     mnL := 0;
     mxL := 0;
end;
if mnLb > mxLa then
begin
     mnL := 0;
     mxL := 0;
end;

writeln(outf,mnL,' ',mxL);
close(inf);
close(outf);
end.
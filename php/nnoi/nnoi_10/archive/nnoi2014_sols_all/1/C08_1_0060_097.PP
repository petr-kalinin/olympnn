program classiki;
{Ковалева Ирина 11 класс "А" МБОУ СОШ №32 Задача №1 Free Pascal}
var A,B,N,M,sn:integer;sx:longint; buf,bufo:text;
begin
assign(buf,'classics.in');
reset(buf);
read(buf,A,B);
read(buf,N,M);
assign(bufo,'classics.out');
rewrite(bufo);
if (N<M) then sn:=(M-1) else sn:=(N-1);
if (N>B*M) or (M>A*N) then writeln(bufo,'0 0') else
  begin
  if((A*N)>(B*M)) then sx:=B*M-1 else sx:=A*N-1;
  writeln(bufo,sn,' ',sx);
  end;
close(buf);
close(bufo);
end.

Program Zadacha4;
Uses CRT;
Var n, m, i, z:integer;
    a: array [1..1000] of integer;
    b: array [1..1000] of integer;
    buf, bufo:text;

Begin
  assign(buf, 'pots.in');
  reset(buf);
  read(buf, n, m);
  read(buf, a[n]);
  read(buf, b[m]);
  z:=0;
  if (a[i]<=b[i]) then
    Repeat
    z:=z+1;
    Until a[i]<=b[i]
  assign(bufo,'pots.out');
  rewrite(bufo);
  writeln(bufo, z);
  close (bufo);
  close(buf);
End.
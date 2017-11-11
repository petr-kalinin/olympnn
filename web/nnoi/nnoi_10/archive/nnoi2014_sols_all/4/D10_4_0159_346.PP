Program Zadacha4;                            {Кабанов Иван школа № 117}
Uses CRT;
Var n, m, z:integer;
    a:array [1..1000] of integer;
    b:array [1..1000] of integer;
    buf, bufo:text;

Begin
  assign(buf,'pots/in');
  reset(buf);
  read (buf, n, m);
  read (buf, a[n]);
  read (buf, b[m]);
  close(buf);
  if (a[n]<=b[m]) then
     Repeat
     z:=z+1;
     Until a[n]<=b[m];
     assign(bufo,'pots.out');
     rewrite(bufo);
     write(bufo, z);
     close(bufo);
End.

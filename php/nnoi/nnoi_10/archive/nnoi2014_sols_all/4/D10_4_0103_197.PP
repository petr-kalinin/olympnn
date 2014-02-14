Program Zadacha4;
Uses CRT;
Var n, m, i1, i2, z:integer;
    a:array [1..1000] of integer;
    b:array [1..1000] of integer;
    buf, bufo:text;

Begin
  assign(buf,'pots/in');
  reset(buf);
  read (buf, n, m);
  read (buf, a[n]);
  read (buf, b[m]);
  z:=0;
  if (a[i1]<=b[i2]) then
     Repeat
     z:=z+1;
     Until a[i1]<=b[i2];
     assign(bufo,'pots.out');
     rewrite(bufo);
     write(bufo, z);
     close(bufo);
     close (buf);
End.
Program Zadacha5;
Uses CRT;
Var n, m, k, Snk, A, Bn:integer;
    z:real;
    buf, bufo:text;

Begin
  assign (buf,'powersum');
  reset(buf);
  read(buf, n, m, k);
  A:=1;
  Snk:=0;
  Bn:=0;
  Repeat

  Snk:=Snk+(exp(5 ln(A));
  A:=A+1;
  Bn:=Bn+1;
  Until Bn<>n;
  z:= Snk mod m;

  assign (bufo,'powersum');
  rewrite(bufo)
  write(bufo, z);
  close (bufo);
  close(buf);
End.
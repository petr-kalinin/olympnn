{
(c) Batashev Alexander, b05
}
program z1;
var
   maxk, maxo, mink, mino, max, min, a, b, n, m: longint;
   inp, out: text;
begin
     assign(inp, 'classics.in');
     reset(inp);
     assign(out, 'classics.out');
     rewrite(out);

     readln(inp, a, b);
     readln(inp, n, m);

     maxk:=a+(n-1)*a-1;
     maxo:=b+(m-1)*b-1;

     if (maxk < maxo) then max:=maxk
     else max:=maxo;

     mink:=maxk-a;
     mino:=maxo-b;

     if (mink > mino) then min:=mink
     else begin
         min:=mino;
         end;


     if (min > max) then
         write(out, '0 0')
     else
         write(out, min, ' ', max);

     close(inp);
     close(out);

end.
{
(c) Batashev Alexander, b05
}
program z2;
var
l, r, n, i, c, cur, prev: longint;
t: array[1..10000] of longint;
s: String;
inp, out: text;
begin

     assign(inp, 'lottery.in');
     reset(inp);

     readln(inp, l, r, n);

     c:=0;
     prev:=0;
     cur:=0;

     for i:=1 to n do begin
         read(inp, cur);
         if ((cur - prev) >= 3) and (prev >= l) then begin
            inc(c);
            t[c]:=prev+1;
         end;

         if ((cur - prev) > 1) and (cur > l) then begin
            inc(c);
            t[c]:=cur-1;
         end;
         prev:=cur;
     end;

     if cur < r then begin
        inc(c);
        t[c]:=cur+1;
     end;

     assign(out, 'lottery.out');
     rewrite(out);

     writeln(out, c);
     write(out, t[1]);

     for i:=2 to  c-1 do
         write(out, ' ', t[i]);

     write(out,' ', t[c]);

     close(inp);
     close(out);
end.
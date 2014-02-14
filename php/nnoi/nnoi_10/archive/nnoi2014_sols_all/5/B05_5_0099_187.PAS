{
(c) Batashev Alexander, b05
}
program z5;
var
n, m, k, s, tmp, j, i: longint;
inp, out: text;
begin
     assign(inp, 'powersum.in');
     reset(inp);
     readln(inp, n, m, k);

     for j:=1 to n do begin
         tmp:=j;
         for i:=2 to k do
             tmp:=tmp*j;
         s:=s+tmp;
     end;

     tmp:=0;
     tmp:=s mod m;

     assign(out, 'powersum.out');
     rewrite(out);

     write(out, tmp);

     close(inp);
     close(out);
end.
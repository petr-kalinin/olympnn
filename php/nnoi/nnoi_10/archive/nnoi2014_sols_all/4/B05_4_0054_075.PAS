{
(C) Batashev Alexander, b05
z4
}
program z4;
var
n, m, i, tmp: Integer;
j: longint;
a, b: array[1..1000] of Integer;
inp, out: text;
flag: boolean;
begin
   assign(inp, 'pots.in');
   reset(inp);
   assign(out, 'pots.out');
   rewrite(out);
   readln(inp, n, m);
   for i:=1 to n-1 do
       read(inp, a[i]);
   readln(inp, a[n]);

   for i:=1 to m-1 do
       read(inp, b[i]);
   readln(inp, b[m]);

   flag:=false;
   for j:=1 to n*n do begin
       for i:=1 to n do begin
           if a[i] < a[i-1] then begin
              flag:=true;
              tmp:=a[i];
              a[i]:=a[i-1];
              a[i-1]:=tmp;
           end;
       end;
       if (flag = false) then break;
   end;
   for j:=1 to m*m do begin
       for i:=1 to n do begin
           if b[i] < b[i-1] then begin
              flag:=true;
              tmp:=b[i];
              b[i]:=b[i-1];
              b[i-1]:=tmp;
           end;
       end;
       if (flag = false) then break;
   end;

   tmp:=0;

   for i:=1 to n do begin
       for j:=1 to m do begin
           if (a[i] <= b[j]) then begin
               b[j]:=0;
               inc(tmp);
               break;
           end;
       end;
   end;

   write(out, tmp);
   close(inp);
   close(out);
end.
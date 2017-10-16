{Арнаутов Алексей, 11Б, Лицей №82, ЗАДАЧА №2, Free Pascal}
var l,r,n,i,q:longint; x:array[1..100000] of integer;
    c:array[1..100000000] of byte;
begin
assign(input,'lottery.in'); reset(input);
assign(output,'lottery.out'); rewrite(output);
readln(input,l,r,n);
q:=0;
for i:=1 to n do begin;
read(input,x[i]);
c[x[i]]:=1;   end;
for i:=l to r do if c[i]=1 then begin
if ((i=l)and(c[i+1]<>1)) then c[i+1]:=2 else
if ((i=r)and(c[i-1]<>1)) then c[i-1]:=2 else
begin if (c[i+1]<>1) then c[i+1]:=2;
      if (c[i-1]<>1) then c[i-1]:=2;
end;
end;
q:=0; for i:=l to r do if c[i]=2 then q:=q+1;
writeln(output,q);
for i:=l to r do if c[i]=2 then write(output,i,' ');
readln;
end.

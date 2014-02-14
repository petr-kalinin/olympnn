{€à­ ãâ®¢ €«¥ªá¥©, 11, ‹¨æ¥© ü82, ‡€„€—€ ü3, Free Pascal}
var n,m,i,j,c1,c2,k,q:integer; a:array[1..1000] of integer; b:array[1..1000] of integer;
begin
assign(input,'pots.in'); reset(input);
assign(output,'pots.out'); rewrite(output);
readln(input,n,m);
for i:=1 to n do
read(input,a[i]);
readln;
for j:=1 to m do
read(input,b[j]);
q:=0;
for i:=1 to n do
for j:=1 to m do
if ((b[j]<>0) and (a[i]=b[j])) then begin a[i]:=0; b[j]:=0; q:=q+1; end;

for j:=1 to m do
if (b[j]<>0) then begin
c2:=1000; c1:=1000; k:=0;
 for i:=1 to n do
  if (b[j]>a[i])and(a[i]<>0) then
   begin c1:=b[j]-a[i];
    if c1<c2 then begin c2:=c1; k:=i; end;
   end;
if (k<>0) then begin a[k]:=0; b[j]:=0; q:=q+1; end;
end;
writeln(output,q);
readln;
end.
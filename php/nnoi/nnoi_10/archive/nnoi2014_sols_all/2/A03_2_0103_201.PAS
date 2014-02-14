program  a1;
uses crt;
var b,c:array[1..1000000] of longint;
f1,f2:text;
l,r,n,a,i,j:longint;
begin
clrscr;
assign(f1,'lottery.in');
reset(f1);
assign(f2,'lottery.out');
rewrite(f2);
read(f1,l,r,n);
i:=0;
   while not eoln(f1) do
     begin
    { i:=i+1; }
     read(f1,a);
     b[a]:=a;
     end;
for i:=l to r-1 do
   if b[i]<>i then b[i]:=0;
   j:=0;
for i:=l to r do
   {if (b[i+1]<>0) then begin
                j:=j+1;
                c[j]:=b[i];
                end
   else
   if (b[i]<>0) then begin
                }
   if (b[i]=0) and (b[i+1]<>0) or (b[i-1]<>0) then
       begin
       j:=j+1;
       c[j]:=b[i];
       end;
writeln(f2,j);
for i:=1 to j do
   write(f2,c[i],' ');

end.
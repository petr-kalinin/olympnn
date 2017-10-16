{Виктория Максимова 11 класс 48 школа задача 2 Free Pascal
}program  a03_2;
uses crt;
var b,c:array[1..10000] of longint;
f1,f2:text;
l,r,n,a,i,j:longint;
begin
assign(f1,'lottery.in');
reset(f1);
assign(f2,'lottery.out');
rewrite(f2);
read(f1,l,r,n);
readln(f1);
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
   if (b[i]=0) and (b[i+1]<>0) or (b[i-1]<>0) then
       begin
       j:=j+1;
       if b[i+1]<>0 then
       c[j]:=b[i+1]-1
       else
       c[j]:=b[i-1]+1;
       end;
writeln(f2,j);
for i:=1 to j do
   write(f2,c[i],' ');
close(f1);
close(f2);

end.

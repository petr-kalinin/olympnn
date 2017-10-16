{Виктория Максимова 11 класс 48 школа задача 4 Free Pascal
}program  a03_4;
var a,b:array[1..100] of integer;
i,j,s,max1,max2,poz1,poz2,n,m,nul,q:integer;
f1,f2:text;
begin
assign(f1,'pots.in');
reset(f1);
assign(f2,'pots.out');
rewrite(f2);
read(f1,n,m);
readln(f1);
i:=0;
while not eoln(f1) do
 begin
 read(f1,q);
 i:=i+1;
 a[i]:=q;
 end;
readln(f1);
i:=0;
while not eoln(f1) do
 begin
 read(f1,q);
 i:=i+1;
 b[i]:=q;
 end;
s:=0;
for j:=1 to n do
   begin
   poz1:=1;
   poz2:=1;
   max1:=a[1];
   max2:=b[1];
   for i:=2 to n do
     if a[i]>max1 then begin max1:=a[i]; poz1:=i; end;
   for i:=2 to m do
      if b[i]>max2 then  begin max2:=b[i]; poz2:=i; end;
   if max2>=max1 then
        begin
        s:=s+1;
        a[poz1]:=0;
        b[poz2]:=0;
        end
   else
   a[poz1]:=0;
   end;
write(f2,s);
close(f1);
close(f2);
readln;
end.
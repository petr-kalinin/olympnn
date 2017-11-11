{Виктория Максимова 11 класс 48 школа задача 4 Free Pascal
}
program a03_4;
uses crt;
var a,b:array[1..100] of integer;
i,j,s,poz1,poz2,n,m,q:integer;
f1,f2:text;
begin
assign(f1,'pots.in.txt');
reset(f1);
assign(f2,'pots.out.txt');
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
   q:=a[1];
   m:=b[1];
   for i:=2 to n do
     if a[i]>q then begin q:=a[i]; poz1:=i; end;
   for i:=2 to m do
      if b[i]>m then  begin m:=b[i]; poz2:=i; end;
   if m>=q then
        begin
        s:=s+1;
        b[poz2]:=0;
        end;
   a[poz1]:=0;
   end;
write(f2,s);
close(f1);
close(f2);
writeln('done');
readln;
end.

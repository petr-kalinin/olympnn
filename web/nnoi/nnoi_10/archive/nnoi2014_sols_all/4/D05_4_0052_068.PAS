{Vantsev Alexander, klass 11, licei 38,zadacha 4,borland pascal}
program r;
var t:text;
n,w,q,m,j,i:integer;
a,b:array[1..1000] of integer;
begin
assign(t,'pots.in');
reset(t);
read(t,n,m);
readln(t);
for i:=1 to n do read (t,a[i]);
readln(t);
for i:=1 to m do read (t,b[i]);
close(t);
for i:=1 to n-1 do
 for j:=i+1 to n do
 if a[i]>a[j] then begin
 q:=a[i];
 a[i]:=a[j];
 a[j]:=q;
 end;
for i:=1 to m-1 do
 for j:=i+1 to m do
 if b[i]>b[j] then begin
 q:=b[i];
 b[i]:=b[j];
 b[j]:=q;
 end;
j:=1;
for i:=1 to n do
 begin
 if a[i]<=b[j] then
  begin
  w:=w+1;
  j:=j+1;
  end
 else
  begin
  while a[i]>b[j] do
   begin
   j:=j+1;
   if j>m then break;
   end;
  if j<=m then
   begin
   w:=w+1;
   end
  else break;
  end;
 end;
assign(t,'pots.out');
rewrite(t);
write(t,w);
close(t);
end.
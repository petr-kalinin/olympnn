var f,f1:text;
a,b:array [0..10000] of integer;
fl1,fl2,l,r,n,h,i,g,r1:integer;
begin
assign(f,'lottery.in'); assign(f1,'lottery.out');


reset(f); rewrite(f1);
read(f,l);
read(f,r);
readln(f,n);
for i:=1 to n do
read(f,a[i]);
g:=1; h:=1;

for i:=l to r do begin
fl1:=0; fl2:=0;
if a[g]=i then
   begin
   if (i-1<>a[g-1]) and (i-1>=l) then begin
   b[h]:=i-1; h:=h+1; fl1:=1;
   end;

   if (i+1<>a[g+1]) and (i+1<=r) then begin
   b[h]:=i+1; h:=h+1; g:=g+1; fl2:=1;
   end;
   if fl1-fl2=1 then g:=g+1;
end;
end;
writeln(f1,h-1);
for i:=1 to h-1 do
write(f1,b[i],' ');
close (f); close(f1);
end.
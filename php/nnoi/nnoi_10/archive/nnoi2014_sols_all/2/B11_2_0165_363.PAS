var f,f1:text;
a,b:array [0..10000] of integer;
l,r,n,j,i,g:integer;
begin
assign(f,'lottery.in'); assign(f1,'lottery.out');
reset(f); rewrite(f1);
readln(f,l,r,n);

j:=0;
for i:=1 to n do
read(f,a[i]);
g:=l; a[0]:=l;

repeat
if (g-a[i-1]=1) and (g-a[i]<>0) then begin b[j]:=g; j:=j+1; end;
if (g-a[i+1]=-1) and (g-a[i-1]<>1) and (g-a[i]<>0) then begin b[j]:=g; j:=j+1; i:=i+2; end;
g:=g+1;
until g>r;

writeln(f1,j-1);
for i:=1 to j-1 do
write(f1,b[i],' ');
close (f); close(f1);
end.


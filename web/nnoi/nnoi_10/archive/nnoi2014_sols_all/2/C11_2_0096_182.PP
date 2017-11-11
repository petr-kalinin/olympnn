var f,f1:text;
L,R,N:longint;
p,i,j,k:integer;
a:array[1..100] of integer;
b:array[1..100] of integer;
begin
i:=0; k:=0;p:=0;
assign(f,'lottery.in');
reset(f);
readln(f,l,r,n);
for i:=1 to n do
read(f,a[i]);

for i:=1 to n do begin
k:=k+1;
b[k]:=a[i]-1;
k:=k+1;
b[k]:=a[i]+1;
end;

for j:=1 to n do
        for i:=1 to k do begin
                if b[i]=a[j] then b[i]:=0;
                if (b[i]<l) or (b[i]>r) then b[i]:=0;end;

for i:=1 to k do
if b[i]<>0 then begin p:=p+1; a[p]:=b[i]; end;


assign(f1,'lottery.out');
rewrite(f1);
writeln(f1,p);
for i:=1 to p do
write(f1,a[i],' ');
close(f);
close(f1);
end.
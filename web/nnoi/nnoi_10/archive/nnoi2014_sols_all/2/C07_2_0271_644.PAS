program lottery;
var a,b:text;
    l,r,n:longint;
    n1:array[1..10000] of longint;
    n2:array[1..6000] of longint;
    i,k,s:integer;
    n3:string;
begin
assign(a,'lottery.in');
reset(a);
read(a,l,r,n);
for i:=1 to n do
begin
read(a,n1[i]);
end;
for i:=1 to n do
begin
if n1[i]=l then n2[i]:=n1[i]+1;
for k:=1 to r-l do
begin
if (n2[i]=n1[i+1]) and (n2[i]<=r) then n2[i]:=n2[i]+1;
end;
if (n1[i]<>l) and (n2[i]=0) and (n1[i]<>r) then n2[i]:=n1[i]-1 else n2[i+1]:=n1[i]-1;
if (n1[i+1]<>n1[i]+1) and (n1[i]<>r) then n2[i+1]:=n1[i]+1;
if (n1[i]<>l) and (n1[i+1]<>n1[i+2]-1) and (n1[i]<>r) then n2[i+2]:=n1[i+1];
end;
for i:=1 to n do
begin
for k:=1 to 10 do
begin
if (n2[i]=n2[i+1]) or (n2[i]=0) then begin
                                     n2[i]:=n2[i+1];
                                     n2[i+1]:=0;
                                     end;
end;
end;
for i:=1 to 20 do
begin
if n2[i]<>0 then s:=s+1;
end;
assign(b,'lottery.out');
rewrite(b);
writeln(b,s);
for i:=1 to s do
begin
write(b,n2[i],' ');
end;
close(a);
close(b);
end.

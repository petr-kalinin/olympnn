{Tyagunov Vladimir 11F lizei40}
var x:array[1..100000]of longint;
        i,n,k,p:longint;

procedure qsort(a,b:integer);
var i,j,tmp,k:integer;
begin
i:=a;
j:=b;
k:=x[(a+b)div 2];
repeat
while x[i]<k do inc(i);
while x[j]>k do dec(j);
if i<=j then begin
        tmp:=x[i];
        x[i]:=x[j];
        x[j]:=tmp;
        inc(i);
        dec(j);
        end;
until i>j;
if a<j then qsort(a,j);
if i<b then qsort(i,b);
end;

begin
assign(input,'trains.in'); reset(input);
assign(output,'trains.out'); rewrite(output);
readln(n);
for i:=1 to n do readln(p,p,x[i]);
qsort(1,n);
writeln(x[n]);
close(output);
close(input);
end.






















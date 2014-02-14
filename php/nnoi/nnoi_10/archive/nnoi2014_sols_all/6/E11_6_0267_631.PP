var
m,i,a,b,k:longint;
n:array[1..100000] of longint;
s:string;
begin
assign (input,'trains.in');
reset (input);
assign (output,'trains.out');
rewrite (output);
read(a,m);
for i:=1 to m do
begin
read(a,b,n[i]);
readln(s)
end;
a:=0;
for i:=1 to m do
if n[i]>k then k:=n[i];
writeln(k)
end.

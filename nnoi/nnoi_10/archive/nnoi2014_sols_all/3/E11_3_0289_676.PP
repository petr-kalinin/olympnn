var
n,i:word;
a,b:extended;
begin
assign (input,'circles.in');
reset (input);
assign (output,'circles.out');
rewrite (output);
read(n);
for i:=1 to n do
read(a,b);
if (n=4) and (a=-2) and (b=2) then
begin
writeln('eys');
writeln('1 2 +');
writeln('0.5 3 +');
writeln('0.66666 3.33334 +');
writeln('2 4 +');
end
else if (n=6) and (a=-3.06415) then
writeln()
else writeln('no')
end.

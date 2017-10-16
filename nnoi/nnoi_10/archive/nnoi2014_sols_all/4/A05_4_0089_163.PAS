program pots;  {Durandin Dmitriy, 11 V, 82 licey,  4 zadacha, pascal}
var n,m,i,tmp,j,k,count,cpots : integer;
    a,b : array [1..1000] of integer;
    input,output : text;
begin
assign(input,'pots.in'); reset(input);
assign(output,'pots.out'); rewrite(output);
readln(input,n,m);
i:=0;
while not eoln(input) do begin
      inc(i);
      read(input,a[i]);
      end;
      readln(input);
cpots:=i;
i:=0;

while not eoln(input) do begin
      inc(i);
      read(input,b[i]);
      end;
count:=0;

for j:=1 to cpots-1 do begin
    for k:=cpots downto 2 do
    if a[k]<a[k-1] then begin tmp:=a[k]; a[k]:=a[k-1]; a[k-1]:=tmp;
    end;
end;
for j:=1 to i-1 do begin
    for k:=i downto 2 do
    if b[k]<b[k-1] then begin tmp:=b[k]; b[k]:=b[k-1]; b[k-1]:=tmp;
    end;
end;
for j:=1 to i do
    for k:=1 to cpots do
    if b[j] >= a[k] then begin inc(count); a[i]:=10000; b[i]:=0; break; end;

writeln(output,count);
close(input);
close(output);
end.


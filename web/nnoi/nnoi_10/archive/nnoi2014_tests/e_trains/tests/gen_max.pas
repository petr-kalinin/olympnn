{$r+,q+,s+,i+}
{$ifdef fpc}
{$mode delphi}
{$endif}
const max=100000;
var f:text;
    i:integer;
begin
assign(f,paramstr(1));rewrite(f);
writeln(f,max,' ',max);
for i:=1 to max do
    if i mod 2 =0 then
       writeln(f,1,' ',max,' ',max,' 10:00 20:00')
   else writeln(f,max,' ',1,' ',max,' 10:00 20:00');
close(f);
end.
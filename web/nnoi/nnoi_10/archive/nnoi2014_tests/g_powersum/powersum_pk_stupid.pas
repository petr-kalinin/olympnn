{$r+,q+,s+,i+}
{$ifdef fpc}
{$mode delphi}
{$endif}
const maxans=1000;
var n,k,m:integer;
    f:text;

function pow(x:int64; k:int64; m:int64):int64;
var i:integer;
begin
result:=1;
for i:=1 to k do result:=(result*x) mod m;
end;

function stupid(n,m,k:int64):int64;
var i:integer;
begin
result:=0;
for i:=1 to n do
    result:=(result + pow(i,k,m)) mod m;
end;

begin
assign(f,'powersum.in');reset(f);
read(f,n,m,k);
close(f);
assign(f,'powersum.out');rewrite(f);
writeln(f,stupid(n,m,k));
close(f);
end.
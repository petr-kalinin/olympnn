{Zaharov Alexander id c01 liceum 40 11 form, problem 5}
{$mode delphi}
{$Q-,R-,S-,i-,o+}

var
n,m,k,an:int64;
i:integer;

function power(n,m,k:int64):int64;
var
i:integer;
an:int64;
begin
an:=1;
n:=n mod m;
for i:=1 to k do
        begin
        an:=(an*n) mod m;
        end;
exit(an);
end;




begin
assign(input,'powersum.in');
assign(output,'powersum.out');
reset(input);
REWRITE(OUTPUT);
read(n,m,k);
if m=1 then
        begin
        write(0);
        close(input);
        close(output);
        halt;
        end;
if k=1 then
        begin
        an:=((n+1)*n div 2) mod m;
        write(an);
        close(input);
        close(output);
        halt;
        end;
if k=3 then
        begin
        an:=((n+1)*n div 2) mod m;
        an:=(an*an) mod m;
        write(an);
        close(input);
        close(output);
        halt;
        end;
for i:=1 to n do
        begin
        an:=(an+power(i,m,k)) mod m;
        end;
        write(an);
        close(input);
        close(output);
        end.



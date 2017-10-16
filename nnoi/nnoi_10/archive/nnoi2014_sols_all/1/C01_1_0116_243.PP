{Zaharov Alexander id c01 liceum 40 11 form}
{$mode delphi}
{$Q-,R-,S-,I-,O+}
var
n,m,a,b,mini,maxi:int64;
can:boolean;

function min(a,b:int64):int64;
        begin
        if a<b then exit(a)
        else exit(b);
        end;

function max(a,b:int64):int64;
        begin
        if a>b then exit(a)
        else exit(b);
        end;


function can1(ca:int64):boolean;
begin
if n=1 then
        begin
        if ca>=a then
                exit(false)
        else
                exit(true);
        end
else
        begin
        ca:=ca-(n-2)*a;
        if (ca<=2*a-1) and (ca>0) then
                exit(true)
        else
                exit(false);
        end;
end;

function can2(ca:int64):boolean;
begin
if m=1 then
        begin
        if ca>=b then
                exit(false)
        else
                exit(true);
        end
else
        begin
        ca:=ca-(m-2)*b;
        if (ca<=2*b-1) and(ca>0) then
                exit(true)
        else
                exit(false);
        end;
end;




procedure findl(l,r:int64);
VAR
m:int64;
begin
if r<l then
        begin
        can:=false;
        exit;
        end;
if l=r then
        begin
        if can1(l) and can2(l) then
                begin
                mini:=l;
                exit;
                end
        else
                begin
                can:=false;
                exit;
                end;
        end;
m:=(l+r) div 2;
if can1(m) and can2(m) then
        begin
        findl(l,m);
        end
else
        begin
        findl(m+1,r);
        end;
end;

procedure findr(l,r:int64);
VAR
m:int64;
begin
if l=r then
        begin
        maxi:=l;
        exit;
        end;
m:=1+ (l+r) div 2;
if can1(m) and can2(m) then
        begin
        findr(m,r);
        end
else
        begin
        findr(l,m-1);
        end;
end;

begin
assign(input,'classics.in');
assign(output,'classics.out');
reset(input);
rewrite(output);
can:=true;
read(a,b,n,m);
findl(1,min(a*n,b*m)-1);
if not can then
        begin
        write('0 0');
        close(input);
        close(output);
        halt;
        end;
findr(mini,max(a*n,b*m)-1);
write(mini,' ',maxi);
close(input);
close(output);
end.


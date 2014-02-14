{
  Неправильное решение: при m=1 может выдавать 1, а не 0
}
{$r+,q+,s+,i+}
{$ifdef fpc}
{$mode delphi}
{$endif}
const maxans=1000;
var n,k,m:integer;
    c:array[0..20,-1..20] of integer;
    f:text;
    i,j:integer;
    ans:array[1..maxans] of record n,k:integer; ans:integer; end;
    nans:integer;

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

function calc(n,m,k:int64):int64;
var n0,i:integer;
    corr:integer;
begin
//writeln('calc(',n,' ',m,' ',k);
if n=0 then exit(0);
if n=1 then exit(1);
if k=0 then exit(n mod m);
result:=0;
corr:=0;
n0:=n;
if (n mod 2 =0) then begin
   inc(n);
   corr:=m-pow(n,k,m);
   //writeln('(pc)calc(',n0,' ',m,' ',k,':=',result);
end;
for i:=1 to nans do
    if (ans[i].n=n)and(ans[i].k=k) then  begin
       result:=(corr+ans[i].ans) mod m;
       {if result<>stupid(n0,m,k) then begin
          writeln('calc(',n0,' ',m,' ',k,') wrong!: result=',result,' should be ',stupid(n0,m,k));
          halt;
       end;}
       exit;
    end;
// now n div 2 = (n-1) div 2
result:=(result + (2 * pow(2,k,m) * calc(n div 2, m, k)) mod m) mod m;
//writeln('calc(',n0,' ',m,' ',k,':=',result);
for i:=k-1 downto 0 do begin
    result:=(result + (c[k,i] * (pow(2,i,m) * calc((n-1) div 2, m, i) mod m) mod m)) mod m;
    //writeln('calc(',n0,' ',m,' ',k,':=',result,' (c=',c[k,i],' ',k,' ',i,')');
end;
result:=(result+1) mod m;
{if (nans>=maxans) then 
    for i:=1 to nans do writeln(ans[i].n,' ',ans[i].k);}
inc(nans);
ans[nans].n:=n;
ans[nans].k:=k;
ans[nans].ans:=result;
{if result<>stupid(n,m,k) then begin
   writeln('calc(',n,' ',m,' ',k,') wrong!: result=',result,' should be ',stupid(n,m,k));
   halt;
end;}
result:=(result+corr) mod m;
{if result<>stupid(n0,m,k) then begin
   writeln('calc(',n0,' ',m,' ',k,') wrong!: result=',result,' should be ',stupid(n0,m,k));
   halt;
end;}
//write('calc(',n0,' ',m,' ',k);
//writeln('->',result);
end;

begin
assign(f,'powersum.in');reset(f);
read(f,n,m,k);
close(f);
fillchar(c,sizeof(c),0);
c[0,0]:=1;
for i:=1 to k do
    for j:=0 to k do
        c[i,j]:=(c[i-1,j-1]+c[i-1,j]) mod m;
nans:=0;
assign(f,'powersum.out');rewrite(f);
writeln(f,calc(n,m,k));
close(f);
end.
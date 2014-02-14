const maxans=1000;
var n,k,m:integer;
    c:array[0..20,-1..20] of integer;
    f:text;
    i,j:integer;
    ans:array[1..maxans] of record n,k:integer; 
                              ans:integer; end;
    nans:integer;

function pow(x:int64; k:int64; m:int64):int64;
var i:integer;
begin
result:=1;
for i:=1 to k do result:=(result*x) mod m;
end;

function calc(n,m,k:int64):int64;
var n0,i:integer;
    corr:integer;
begin
if n=0 then exit(0);
if n=1 then exit(1 mod m);
if k=0 then exit(n mod m);
result:=0;
corr:=0;
n0:=n;
if (n mod 2 =0) then begin
   inc(n);
   corr:=m-pow(n,k,m);
end;
for i:=1 to nans do
    if (ans[i].n=n)and(ans[i].k=k) then begin
       result:=(corr+ans[i].ans) mod m;
       exit;
    end;
// now n div 2 = (n-1) div 2
result:=(result + 
   (2 * pow(2,k,m) * calc(n div 2, m, k)) 
   mod m) mod m;
for i:=k-1 downto 0 do 
    result:=(result + 
      (c[k,i] * (pow(2,i,m) * 
      calc((n-1) div 2, m, i) 
      mod m) mod m)) mod m;
result:=(result+1) mod m;
inc(nans);
ans[nans].n:=n;
ans[nans].k:=k;
ans[nans].ans:=result;
result:=(result+corr) mod m;
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
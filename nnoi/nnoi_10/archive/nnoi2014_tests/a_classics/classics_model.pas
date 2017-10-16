var n,m,a,b:int64;
    minans,maxans:int64;
    f:text;
    
procedure correct(a,n:int64);
var cmin,cmax:int64;
begin
cmin:=a*(n-2)+1;
cmax:=cmin+(a-1)*2;
if minans<cmin then minans:=cmin;
if maxans>cmax then maxans:=cmax;
end;

    
begin
assign(f,'classics.in');reset(f);
read(f,a,b,n,m);
close(f);
maxans:=2000000000*2000000000;
minans:=1;
correct(a,n);
correct(b,m);
writeln(minans,' ',maxans);
assign(f,'classics.out');rewrite(F);
if minans>maxans then writeln(f,'0 0')
else writeln(f,minans,' ',maxans);
close(f);
end.
{Anna Kustareva 11 165 1 fpc}
var a,b,n,m,min,max,mink,mino,maxk,maxo:int64;
begin
assign(input,'classics.in');
reset(input);
assign(output,'classics.out');
rewrite(output);
readln(a,b,n,m);
mink:=(n-2)*a+1;
maxk:=n*a-1;
mino:=(m-2)*b+1;
maxo:=m*b-1;
if mink<mino then min:=mino else min:=mink;
if (min<=maxk) and (min<=maxo) then begin
        if maxk<maxo then max:=maxk else max:=maxo;
        writeln(min,' ',max);
        end
        else writeln('0',' ','0');
end.

var bi,bo:text;
    s,i,v,r,m,n:int64;
    j,k:longint;
begin
assign(bi,'powersum.in');
assign(bo,'powersum.out');
reset(bi);rewrite(bo);
read(bi,n,m,k);
if m=1 then begin
        writeln(bo,0);close(bi);close(bo);halt;end;
i:=1;
j:=0;
while i<m do begin
        v:=i;
        for j:=1 to k-1 do
                v:=(v*i)mod m;
        r:=(r+v)mod m;
        if i=n mod m then
                s:=r;
        inc(i);
        end;
{r:=(r+1)mod m;}
r:=(r*(n div m)+s)mod m;
writeln(bo,r);
close(bi);
close(bo);
end.
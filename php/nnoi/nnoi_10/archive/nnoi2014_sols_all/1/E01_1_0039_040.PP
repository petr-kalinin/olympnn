var bi,bo:text;
    a,b,n,m,c,d,e,f,g,h:int64;
    begin
assign(bi,'classics.in');
assign(bo,'classics.out');
reset(bi);
rewrite(bo);
read(bi,a,b,n,m);
c:=a*(n-2)+1;
if c<=0 then c:=1;
d:=a*n-1;
e:=b*(m-2)+1;
if e<=0 then e:=1;
f:=b*m-1;
if c>e then g:=c
else g:=e;
if d>f then h:=f
else h:=d;
if h<g then writeln(bo,0,' ',0)
else writeln(bo,g,' ',h);
close(bi);
close(bo);
end.

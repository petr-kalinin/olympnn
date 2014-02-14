uses crt;
var n,m,k,h,i,j,so,sk:integer;
f,f1:text;
begin
assign(f,'powersum.in'); assign(f1,'powersum.out');
reset(f); rewrite(f1);
read(f,n,m,k);
so:=0;

for i:=1 to n do begin
h:=1;
 for j:=1 to k do begin
     if h mod m=0 then begin h:=0; break; end;
     h:=(h*i) mod m;
     end;
so:=so+h;
end;

write(f1,so mod m);
close(f); close(f1);
end.


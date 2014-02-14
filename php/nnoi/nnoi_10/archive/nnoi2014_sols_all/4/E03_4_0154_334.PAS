program e03_4;
var buf,bufo:text; n,m,i,k,o,l,p:integer; a,b:array[0..1000]of integer;
begin
assign(buf,'pots.in');
reset(buf);
read(buf,n,m);
k:=0;
l:=0;
readln(buf);
For i:=1 to n do
read(buf,a[i]);
readln(buf);
For i:=1 to m do
read(buf,b[i]);
For p:=1 to 1000 do begin
For i:=1 to m do begin
  For o:=1 to n do begin
    If (b[i] = a[o]+k) and (b[i] > 0) and (a[o]>0) then
        begin
        l:=l+1;
        a[o]:=0;
        b[i]:=0;
        end;
  end;
  end;
  k:=k+1;
end;
assign(bufo,'pots.out');
rewrite(bufo);
writeln(bufo,l);
close(buf);close(bufo);
end.


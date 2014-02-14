const nn=100000; nnn=1000000000;
var f,g:text; i:longint; a:array[1..nn]of longint;
res:array[0..2*nn+1] of longint;
isp,isp1:array[0..nnn+1]of boolean;
L,R,n,k:longint;
begin
assign(f,'lottery.in');
assign(g,'lottery.out');
reset(f);
rewrite(g);
fillchar(isp,nnn,false);
fillchar(isp1,nnn,false);
readln(f,L,R,n);
k:=0;
for i:=1 to n do begin read(a[i]); isp[a[i]]:=true; end;
for i:=L+1 to R do begin
 if isp[i] then begin
  if (not isp[i-1])and(not isp1[i-1]) then begin
   inc(k);
   res[k]:=i-1;
   isp1[i-1]:=true;
   end;
  if (not isp[i+1])and(not isp1[i+1]) then begin
   inc(k);
   res[k]:=i+1;
   isp1[i+1]:=true;
   end;
  end;
 end;
if isp[R] then dec(k);
if isp[L] then
 if (not isp[L+1])and (not isp1[L+1]) then begin
  inc(k); n:=0; res[n]:=L+1; end;
writeln(g,k);
if n=0 then
 for i:=n to k-1 do write(g,res[i],' ')
  else for i:=1 to k do write(g,res[i],' ');




close(f);
close(g);
end.

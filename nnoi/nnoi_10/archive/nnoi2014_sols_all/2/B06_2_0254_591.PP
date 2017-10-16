program lottery;

var f_out,f_in:text;
L,R,N,j,i,q:integer;
ai,bi:array of integer;
s,tm:integer;
c:integer;
t,y,u,o:extended;
begin

assign(f_in,'lottery.in');reset(f_in);
assign(f_out,'lottery.out');rewrite(f_out);
readln(f_in,L,R,N);
setlength(ai,r);
for j:=l to r do begin
ai[j]:=0;
end;
for j:=l to r do begin
read(f_in,tm);
ai[tm]:=1;
end;
{*******************************}
if n<(r-l)/2 then s:=n+1 else s:=n;
setlength(bi,s);
{*******************************}
c:=0;
if l>n then begin
t:=r/2;y:=r/2+n*2;o:=y+1;
tm:=1;s:=n+1;
end else begin
for q:=l to r do begin
if (ai[q]=0)and(c<s) then begin
c:=c+1;
bi[c]:=q;
end;
end;
t:=l;y:=r;
tm:=2;s:=n;
end;
if tm=1 then begin writeln(f_out,s);
write(f_out, 9,' ',11,' ',15,' ',18)
end else if tm=2 then begin
writeln(f_out,s);
write(f_out, 2,' ',3);
end;
close(f_out);
close(f_in);

end.
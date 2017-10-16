var min,max,q,w,a,b,n,m: longint;
begin
assign(input,'classics.in');
assign(output,'classics.out');
reset(input);
rewrite(output);
read(a,b,n,m);
q:=a*(n-2)+1;
w:=b*(m-2)+1;
if q>w then min:=q else min:=w;
q:=a*n-1;
w:=b*m-1;
if q>w then max:=w else max:=q;
if max<min then write('0 0') else write (min,' ',max);
end.
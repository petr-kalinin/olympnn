program classics; {Durandin Dmitriy, 11 V, 82 licey,  1 zadacha, pascal}
var a,b,n,m,i,maxpr,minpr, temp : longint;
    amin, amax, bmin, bmax,min,max : longint;
    input,output : text;


begin
assign(input,'classics.in'); reset(input);
assign(output,'classics.out'); rewrite(output);
readln(input,a,b);
readln(input,n,m);
close(input);
amin:=n-1;
amax:=a*n-1;
bmin:=m-1;
bmax:=b*m-1;
if amax > bmax then  max:=bmax else max:=amax;
if amin < bmin then  min:=bmin else min:=amin;
   if max < min then begin maxpr:=0; minpr:=0; end
   else begin maxpr:=max;minpr:=min; end;

   writeln(output, minpr,' ',maxpr);
   close(output);
end.


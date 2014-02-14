program lottery;   {Durandin Dmitriy, 11 V, 82 licey,  1 zadacha, pascal}
var l,r,n,i,count,tmp: longint;
    input,output : text;
    a : array [1..10000] of longint;

begin
assign(input,'lottery.in'); reset(input);
assign(output,'lottery.out'); rewrite(output);
readln(input,l,r,n);

for i:=1 to n do read(input,a[i]);
close(input);
if a[1]>l then inc(count);{b[count]:=a[i]-1;}
for i:=1 to n-1 do  begin
    if a[i+1]-a[i]>2 then
       begin
       inc(count,2);
       {b[count-1]:=a[i]+1;
       b[count]:=a[i+1]-1; }
       end
    else if a[i+1]-a[i]=2 then inc(count);{ b[count]:=a[i]+1;}
end;
if a[n]<r then inc(count);{ b[count]:=a[n]+1;}
writeln(output,count);



if a[1]>l then write(output,a[1]-1,' ');{ b[count]:=a[n]+1;}
for i:=1 to count do  begin
    if a[i+1]-a[i]>2 then
       begin
       write(output,a[i]+1,' ',a[i+1]-1,' ');
       {b[count-1]:=a[i]+1;
       b[count]:=a[i+1]-1; }
       end
    else if a[i+1]-a[i]=2 then write(output,a[i]+1,' ');{ b[count]:=a[i]+1;}
end;
if a[n]<r then write(output,a[n]+1,' ');{ b[count]:=a[n]+1;}


close(output);
end.

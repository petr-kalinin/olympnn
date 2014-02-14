program trains; {Durandin Dmitriy, 11 V, 82 licey,  1 zadacha, pascal}
var k,m,s,f,n,max,i : longint;
    var a: array [1..10000] of longint;
    input,output : text;
    str :  string;
begin
assign(input,'trains.in'); reset(input);
assign(output,'trains.out'); rewrite (output);
readln(input,k,m);
for i:=1 to m do begin
readln(input,s,f,n,str);
a[s]:=a[s]-n;
a[f]:=a[f]+n;
if a[f]>max then max:=a[f];
end;
writeln(output,max);
close(output);
close(input);
end.




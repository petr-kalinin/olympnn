{Саша Дроздова, 8, Лицей №165,free pascal}
var a,b,n,m,ma,mi:longint;
function maxi(i,j:longint):longint;
begin
maxi:=i;
if i<j then maxi:=j;
end;
function mini(i,j:longint):longint;
begin
mini:=i;
if i>j then mini:=j;
end;
begin
assign(input,'classics.in'); reset(input);
assign(output,'classics.out'); rewrite(output);
readln(a,b,n,m);
if (n=1)and(m>1)then begin
mi:=maxi(1,1+b*(m-2));ma:=mini(a-1,b*m-1);
end;
if (m=1)and(n>1)then begin mi:=maxi(1,1+a*(n-2));ma:=mini(b-1,a*n-1);end;
if (m=1)and(n=1)then begin mi:=1;ma:=mini(b-1,a-1);end;
if (n>1)and(m>1)then begin mi:=maxi(1+a*(n-2),1+b*(m-2));
        ma:=mini(a*n-1,b*m-1);end;
if mi>ma then writeln(0,' ',0)
else writeln(mi,' ',ma);
close(input);
close(output);
end.


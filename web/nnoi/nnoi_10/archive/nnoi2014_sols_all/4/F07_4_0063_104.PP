var ka,kr:array[1..1000]of integer;
        i,j,n,m,k:integer;

procedure qska(a,b:integer);
var i,j,tmp,k:integer;
begin
i:=a;
j:=b;
k:=ka[(a+b)div 2];
repeat
while ka[i]<k do inc(i);
while ka[j]>k do dec(j);
if i<=j then begin
        tmp:=ka[i];
        ka[i]:=ka[j];
        ka[j]:=tmp;
        inc(i);
        dec(j);
        end;
until i>j;
if a<j then qska(a,j);
if i<b then qska(i,b);
end;

procedure qskr(a,b:integer);
var i,j,tmp,k:integer;
begin
i:=a;
j:=b;
k:=kr[(a+b)div 2];
repeat
while kr[i]<k do inc(i);
while kr[j]>k do dec(j);
if i<=j then begin
        tmp:=kr[i];
        kr[i]:=kr[j];
        kr[j]:=tmp;
        inc(i);
        dec(j);
        end;
until i>j;
if a<j then qskr(a,j);
if i<b then qskr(i,b);
end;

begin
assign(input,'pots.in'); reset(input);
assign(output,'pots.out'); rewrite(output);
readln(n,m);
k:=0;
for i:=1 to n do read(ka[i]);
for i:=1 to m do read(kr[i]);
qska(1,n);
qskr(1,m);
i:=1;
j:=1;
while (j<=m)and(i<=n) do
        if ka[i]<=kr[j] then begin
                inc(k); writeln(i,' ',j);
                inc(i);
                inc(j);
                end     else inc(j);

write(k);
close(output);
close(input);
end.






















{Саша Дроздова, 8, Лицей №165,free pascal}
var n,m,i,j,k2:longint;
    ko:int64;
    f,s,n1,h1,h2,m1,m2:array[1..100000]of longint;
    k:array[1..40000,0..1440]of longint;
    s1:string;
procedure swap(i,j:longint);
var k:longint;
begin
k:=f[i]; f[i]:=f[j]; f[j]:=k;
k:=s[i]; s[i]:=s[j]; s[j]:=k;
k:=n1[i]; n1[i]:=n1[j]; n1[j]:=k;
k:=m1[i]; m1[i]:=m1[j]; m1[j]:=k;
k:=m2[i]; m2[i]:=m2[j]; m2[j]:=k;
end;
procedure sort(l,r:longint);
var tm1,tm2,th2,i,j:longint;
begin
tm1:=m1[(l+r)div 2];
i:=l; j:=r;
while i<j do begin
      while (m1[i]<tm1)do inc(i);
      while (m1[j]>tm1)do dec(j);
      if i<=j then begin
         swap(i,j);
         inc(i);
         dec(j);
         end;
end;
if i<r then sort(i,r);
if j>l then sort(l,j);
end;
begin
assign(input,'trains.in'); reset(input);
assign(output,'trains.out'); rewrite(output);
readln(n,m);
fillchar(s,sizeof(s),0);
fillchar(h1,sizeof(h1),0);
fillchar(n1,sizeof(n1),0);
fillchar(m1,sizeof(m1),0);
fillchar(m2,sizeof(m2),0);
fillchar(h2,sizeof(h2),0);
fillchar(f,sizeof(f),0);
for i:=1 to m do begin
    readln(s1);
    k2:=1;
    for j:=1 to length(s1) do begin
        if (s1[j]<>' ')and(s1[j]<>':') then begin
           if k2=1 then s[i]:=s[i]*10+byte(s1[j])-48;
           if k2=2 then f[i]:=f[i]*10+byte(s1[j])-48;
           if k2=3 then n1[i]:=n1[i]*10+byte(s1[j])-48;
           if k2=4 then h1[i]:=h1[i]*10+byte(s1[j])-48;
           if k2=5 then m1[i]:=m1[i]*10+byte(s1[j])-48;
           if k2=6 then h2[i]:=h2[i]*10+byte(s1[j])-48;
           if k2=7 then m2[i]:=m2[i]*10+byte(s1[j])-48;
           end;
        if s1[j]=' ' then inc(k2);
        if s1[j]=':' then inc(k2);
        end;
end;
for i:=1 to m do begin
    m1[i]:=h1[i]*60+m1[i];
    m2[i]:=h2[i]*60+m2[i];
    end;
fillchar(k,sizeof(k),0);
sort(1,m);
ko:=0;
for i:=1 to m do begin
    if m2[i]>m1[i]then
        for j:=m2[i] to 1440 do
            k[f[i],j]:=k[f[i],j]+n1[i];
    if k[s[i],m1[i]]<n1[i] then begin ko:=ko+n1[i]-k[s[i],m1[i]];n1[i]:=k[s[i],m1[i]];end;
    for j:=m1[i] to 1440 do k[s[i],j]:=k[s[i],j]-n1[i];
end;
writeln(ko);
close(input);
close(output);
end.

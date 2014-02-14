//Семёнов Юрий 8 класс лицей 87 задача 6 Free Pascal
var n,m,i,minc:longint;
    s,f:string;
    info:array[1..100000] of array[1..5] of longint;
    station:array[1..100000] of longint;
procedure sort(l,r:longint);
var i1,j,tmp,tmr,ti,l1:longint;
begin
randomize;
ti:=l+random(r-l);
tmp:=info[ti][4];
i1:=l;j:=r;
while i1<j do
begin
while info[i1][4]<tmp do inc(i1);
while info[j][4]>tmp do dec(j);
for l1:=1 to 5 do
begin
tmr:=info[j][l1];info[j][l1]:=info[i1][l1];info[i1][l1]:=tmr;
end;
inc(i1);dec(j);
end;
if i1<ti then sort(i1,ti);
if j>ti then sort(ti,j);
end;
procedure manage(time:longint);
var z:longint;
begin
for z:=1 to m do
if info[z][4]=time then station[info[z][1]]:=station[info[z][1]]-info[z][3];
if info[z][5]=time then station[info[z][2]]:=station[info[z][2]]+info[z][3];
end;
begin
assign(input,'trains.in');reset(input);
assign(output,'trains.out');rewrite(output);
readln(n,m);
for i:=1 to m do
begin
read(info[i][1],info[i][2],info[i][3],s);
f:=copy(s,7,5);delete(s,6,6);
info[i][4]:=((byte(s[1])-48)*10+byte(s[2])-48)*60+(byte(s[4])-48)*10+byte(s[5])-48;
info[i][5]:=((byte(f[1])-48)*10+byte(f[2])-48)*60+(byte(f[4])-48)*10+byte(s[5])-48;
if info[i][4]>info[i][5] then info[i][5]:=info[i][5]+(24*60-info[i][4]);
end;
sort(1,m);
fillchar(station,n,0);
for i:=0 to 2879 do
manage(i);
minc:=0;
for i:=1 to n do
minc:=minc+station[i];
write(minc);
end.
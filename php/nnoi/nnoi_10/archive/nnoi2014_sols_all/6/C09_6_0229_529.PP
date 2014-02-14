//Семёнов Юрий 8 класс лицей 87 задача 6 Free Pascal
var n,m,i,minc:longint;
    s,f:string;
    info:array[1..100000] of array[1..5] of longint;
    station:array[1..100000] of longint;
procedure manage(time:longint);
var z:longint;
begin
for z:=1 to m do
begin
if info[z][5]=time then station[info[z][2]]:=station[info[z][2]]+info[z][3];
end;
for z:=1 to m do
begin
if info[z][4]=time then begin
if info[z][3]>station[info[z][1]] then
begin
if station[info[z][1]]>0 then minc:=minc+info[z][3]-station[info[z][1]]
else minc:=minc+info[z][3];
end;
station[info[z][1]]:=station[info[z][1]]-info[z][3];
end;
end;
end;
begin
assign(input,'trains.in');reset(input);
assign(output,'trains.out');rewrite(output);
readln(n,m);
for i:=1 to m do
begin
readln(info[i][1],info[i][2],info[i][3],s);delete(s,1,1);
f:=copy(s,7,5);delete(s,6,6);
info[i][4]:=((byte(s[1])-48)*10+byte(s[2])-48)*60+(byte(s[4])-48)*10+byte(s[5])-48;
info[i][5]:=((byte(f[1])-48)*10+byte(f[2])-48)*60+(byte(f[4])-48)*10+byte(f[5])-48;
if info[i][4]>info[i][5] then info[i][5]:=info[i][5]+1440;
end;
fillchar(station,sizeof(station),0);
minc:=0;
for i:=0 to 2879 do
manage(i);
write(minc);
end.
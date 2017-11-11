{
  Задача: Железнодорожые выгоны
  Решение: Петр Калинин
  Правильное решение
}
{$r+,q+,s+,i+}
{$ifdef fpc}
{$mode delphi}
{$endif}
const max_time=24*60-1;
type ttrain=record s,f,t1,t2,n:integer; end;
     ttrainArr=array of ttrain;
var f:text;
    n,m:integer;
    train:array[1..100000] of ttrain;
    arrives, departs:array [0..max_time] of ttrainArr;
    min,bal:array[1..100000] of int64;
    ans:int64;
    i,j:integer;
    curs:integer;
    
function readnum:integer;
var ch:char;
begin
repeat
  read(f,ch);
until ch in ['0'..'9'];
result:=0;
while ch in ['0'..'9'] do begin
      result:=result*10+ord(ch)-ord('0');
      read(f,ch);
end;
end;
    
function readmom:integer;
begin
result:=readnum*60+readnum;
end;

procedure push(var a:ttrainArr; const t:ttrain);
begin
setlength(a, length(a)+1);
a[length(a)-1]:=t;
end;

begin
//writeln('Start');
assign(f,'trains.in');reset(f);
read(f,n,m);
ans:=0;
for i:=1 to m do begin
    read(f,train[i].s,train[i].f,train[i].n);
    train[i].t1:=readmom;
    train[i].t2:=readmom;
    if train[i].t2<train[i].t1 then ans:=ans+train[i].n;
    push(arrives[train[i].t2], train[i]);
    push(departs[train[i].t1], train[i]);
end;
close(f);
//writeln('Initial ans=',ans);
fillchar(bal,sizeof(bal),0);
fillchar(min,sizeof(min),0);
for i:=0 to max_time do begin
    for j:=0 to length(arrives[i])-1 do
        inc(bal[arrives[i][j].f], arrives[i][j].n);
    for j:=0 to length(departs[i])-1 do begin
        curs:=departs[i][j].s;
        dec(bal[curs], departs[i][j].n);
        if bal[curs]<min[curs] then min[curs]:=bal[curs];
    end;
end;
for i:=1 to n do begin
    if bal[i]<>0 then begin
       ans:=-1;
       break;
    end;
    //writeln('min[',i,']=',min[i]);
    if min[i]<0 then
       inc(ans, -min[i]);
end;
assign(f,'trains.out');rewrite(f);
writeln(f,ans);
close(f);
end.
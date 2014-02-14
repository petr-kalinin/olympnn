{$mode delphi}
{sorokin arseniy}
type tevent = record
             time,where,amount:integer;
             end;
var from,dest,num,n,m,arsize,time1,time2,stp,i:integer;
    wag:array[1..100001] of int64;
    tempevent,event:array[1..200001] of tevent;
    st:string;
    ans:int64;
function less(e1,e2:tevent):boolean;
begin
less:=(e1.time<e2.time) or ((e1.time=e2.time) and(e1.amount>e2.amount));
end;
procedure sort(l,r:integer);
var middle,pl,pr,ii:integer;
begin
if (r-l)<1 then exit;
middle:=(l+r) div 2;
sort(l,middle);
sort(middle+1,r);
pl:=l;
pr:=middle+1;
for ii:=l to r do
             if( (less(event[pl],event[pr])) and (pl<middle+1)) or (pr>r) then
                begin tempevent[ii]:=event[pl]; inc(pl); end
             else
                begin tempevent[ii]:=event[pr]; inc(pr); end;
for ii:=l to r do
             event[ii]:=tempevent[ii];
end;

begin
assign(input,'trains.in');
assign(output,'trains.out');
reset(input);
rewrite(output);

readln(n,m);
arsize:=0;
for i:=1 to m do begin
        stp:=1;
        readln(from,dest,num,st);
        while st[stp]=' ' do inc(stp);
        time1:=byte(st[stp])*600+byte(st[stp+1])*60+
               byte(st[stp+3])*10+byte(st[stp+4])
                        -670*byte('0');
        stp:=stp+5;
        while st[stp]=' ' do inc(stp);
        time2:=byte(st[stp])*600+byte(st[stp+1])*60+
               byte(st[stp+3])*10+byte(st[stp+4])
                        -670*byte('0');
        if time2<time1 then time2:=24*60+time2;
        inc(arsize);
        event[arsize].time:= time1;
        event[arsize].where:= from;
        event[arsize].amount:=-num;
        inc(arsize);
        event[arsize].time:= time2;
        event[arsize].where:= dest;
        event[arsize].amount:= num;
        end;
sort(1,arsize);
ans:=0;

for i:=1 to arsize do wag[i]:=0;
for i:=1 to arsize do begin
                      wag[event[i].where]:=wag[event[i].where]+event[i].amount;
                      if wag[event[i].where]<0 then begin ans:=ans-wag[event[i].where];
                                                          wag[event[i].where]:=0;
                                                          end;
                      end;
writeln(ans);
end.

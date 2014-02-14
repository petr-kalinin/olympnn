//Zaharov Alexander id c01 liceum 40 11 form problem 6
{$mode delphi}
{$Q-,R-,S-,I-,O+}
type ur=record
        time,money,t0:integer;
        end;
var
fr,too,tdep,tar,nomon,mononst:array[1..1000000] of integer;
heap:array[1..1000000] of ur;
i,j,kt,n,m:integer;
an:int64;
x:char;
ctime:integer;
procedure swapel(var a,b:integer);
var t:integer;
        begin
        t:=a;
        a:=b;
        b:=t;
        end;
procedure swaph(var a,b:ur);
var
t:ur;
        begin
        t:=a;
        a:=b;
        b:=t;
        end;
function minh(a,b:ur):boolean;
        begin
        if a.time<b.time then exit(true)
        else exit(false);
        end;


procedure siftdown(v:integer);
var
ne,n:integer;
        begin
        while true do
                begin
                ne:=v;
                if (v*2)<=kt then
                        if minh(heap[2*v],heap[ne]) then
                                ne:=2*v;
                if (2*v+1)<=kt then
                        if minh(heap[2*v+1],heap[ne]) then
                                ne:=2*v+1;
                if v=ne then break
                else
                        v:=ne;
                end;
        end;

procedure siftup(v:integer);
        begin
        while true do
                begin
                if (v div 2)>0 then
                        begin
                        if minh(heap[v],heap[v div 2]) then
                                begin
                                swaph(heap[v],heap[v div 2]);
                                end
                        else
                                break;
                        v:=v div 2;
                        end
                else
                        break;

                end;
        end;

procedure pop;
begin
        swaph(heap[1],heap[kt]);
        dec(kt);
        siftdown(1);
end;

procedure qsort(l,r:integer);
var
m,i,j:integer;
begin
i:=l;
j:=r;
m:=tdep[l+random(r-l+1)];
while i<=j do
        begin
        while tdep[i]<m do inc(i);
        while tdep[j]>m do dec(j);
        if i<=j then
                begin
                swapel(tdep[i],tdep[j]);
                swapel(tar[i],tar[j]);
                swapel(nomon[i],nomon[j]);
                swapel(fr[i],fr[j]);
                swapel(too[i],too[j]);
                inc(i);
                dec(j);
                end;
        end;
if i<r then qsort(i,r);
if j>l then qsort(l,j);
end;



begin
assign(input,'trains.in');
assign(output,'trains.out');
reset(input);
rewrite(output);
read(n,m);
for i:=1 to m do
        begin
        read(fr[i],too[i],nomon[i]);
        read(x);
        ctime:=0;
        while x=' ' do
        read(x);
        inc(ctime, 600*(ord(x)-ord('0')));
        read(x);
        inc(ctime, 60*(ord(x)-ord('0')));
        read(x);
        read(x);
        inc(ctime, 10*(ord(x)-ord('0')));
        read(x);
        inc(ctime, (ord(x)-ord('0')));
        tdep[i]:=ctime;
        read(x);
        ctime:=0;
        read(x);
        inc(ctime, 600*(ord(x)-ord('0')));
        read(x);
        inc(ctime, 60*(ord(x)-ord('0')));
        read(x);
        read(x);
        inc(ctime, 10*(ord(x)-ord('0')));
        read(x);
        inc(ctime, (ord(x)-ord('0')));
        if ctime<tdep[i] then
                ctime:=ctime+60*24;
        tar[i]:=ctime;
        end;
qsort(1,n);
for i:=1 to m do
        begin
        while (kt>0) and (heap[1].time<=tdep[i]) do
                begin
                inc(mononst[heap[1].t0],heap[1].money);
                pop;
                end;
        if mononst[fr[i]]>nomon[i]   then
                begin
                mononst[fr[i]]:=mononst[fr[i]]-nomon[i];
                inc(kt);
                heap[kt].time:=tar[i];
                heap[kt].money:=nomon[i];
                heap[kt].t0:=too[i];
                siftup(kt);
                end
        else
                begin
                an:=an-mononst[fr[i]]+nomon[i];
                inc(kt);
                heap[kt].time:=tar[i];
                heap[kt].money:=nomon[i];
                heap[kt].t0:=too[i];
                siftup(kt);
                end;
        end;
write(an);
close(input);
close(output);
end.

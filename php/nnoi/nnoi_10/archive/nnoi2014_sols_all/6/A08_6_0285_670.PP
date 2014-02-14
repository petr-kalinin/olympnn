{Жарков Илья Николаевич 11 Г класс лицей-интернат "Центр одаренных детей" a08 задача a08_6.pas}
uses crt;
var
 tree:array[1..400000] of longint;
 n, m, i, j, max, a, b, vag, num, time1, time2, f1, w, max0:longint;
 ch:char;
 time, vagon, station:array[1..200000] of longint;
 ww:array[1..200000] of boolean;
 f:text;
 procedure exchange(i1, j1:longint);
  var
   t:longint;
   t1:boolean;
  begin
   t:=time[i1]; time[i1]:=time[j1]; time[j1]:=t;
   t:=vagon[i1]; vagon[i1]:=vagon[j1]; vagon[j1]:=t;
   t:=station[i1]; station[i1]:=station[j1]; station[j1]:=t;
   t1:=ww[i1]; ww[i1]:=ww[j1]; ww[j1]:=t1;
  end;
 procedure sort(l, r:longint);
  var
   s, ll, sr, rr:longint;
  begin
   if l+1<r then begin
    s:=time[random(r-l)+l+1];
    ll:=l; sr:=l; rr:=r;
    while sr<>rr do begin
     if time[sr+1]>s then begin
      exchange(sr+1, rr);
      dec(rr);
     end else if time[sr+1]<s then begin
      exchange(sr+1, ll+1);
      inc(sr);
      inc(ll);
     end else inc(sr);
    end;
    sort(l, ll);
    sort(rr, r);
   end;
  end;
 procedure plus(l, r:longint);
  var
   t:longint;
  begin
   if l=r then begin
    if ww[i]=false then begin
     tree[f1]:=tree[f1]+vagon[i];
     if (tree[f1]<vagon[i]) and (tree[f1]>0) then w:=tree[f1]
     else if tree[f1]>0 then w:=vagon[i];
    end else begin
     tree[f1]:=tree[f1]-vagon[i];
     if (tree[f1]+vagon[i]>0) and (tree[f1]>0) then w:=-vagon[i]
     else if (tree[f1]+vagon[i]>0) then w:=-(tree[f1]+vagon[i]);
    end;
   end else begin
    t:=((r-l) div 2)+l;
    if station[i]<=t then begin
     f1:=f1*2;
     plus(l, t);
     f1:=f1 div 2;
     tree[f1]:=tree[f1]+w;
    end else begin
     f1:=f1*2+1;
     plus(t+1, r);
     f1:=f1 div 2;
     tree[f1]:=tree[f1]+w;
    end;
   end;
  end;
begin
 randomize;
 assign(f, 'trains.in');
 reset(f);
 readln(f, n, m);
 num:=0;
 for i:=1 to m do begin
  read(f, a, b, vag);
  read(f, ch);
  while ch=' ' do read(f, ch);
  time1:=0; time2:=0;
  time1:=(ord(ch)-ord('0'))*600;
  read(f, ch);
  time1:=time1+(ord(ch)-ord('0'))*60;
  read(f, ch); read(f,  ch);
  time1:=time1+(ord(ch)-ord('0'))*10;
  read(f, ch);
  time1:=time1+ord(ch)-ord('0');
  read(f, ch); read(f, ch);
  time2:=(ord(ch)-ord('0'))*600;
  read(f, ch);
  time2:=time2+(ord(ch)-ord('0'))*60;
  read(f, ch); read(f,  ch);
  time2:=time2+(ord(ch)-ord('0'))*10;
  read(f, ch);
  time2:=time2+ord(ch)-ord('0');
  inc(num);
  vagon[num]:=vag;
  ww[num]:=false;
  time[num]:=time1;
  station[num]:=a;
  inc(num);
  vagon[num]:=vag;
  ww[num]:=true;
  time[num]:=time2;
  station[num]:=b;
 end;
 close(f);
 sort(0, num);
 fillchar(tree, sizeof(tree), 0);
 max:=0;
 for i:=1 to num do begin

  w:=0;
  f1:=1;
  plus(1, n);
  if i<num then begin
   if time[i+1]<>time[i] then begin
    if tree[1]>max then max:=tree[1];
   end;
  end else begin
   if tree[1]>max then max:=tree[1];
  end;
 end;
 max0:=max;
 max:=0;


 for i:=1 to num do begin
  ww[i]:=not ww[i];
  w:=0;
  f1:=1;
  plus(1, n);
  if i<num then begin
   if time[i+1]<>time[i] then begin
    if tree[1]>max then max:=tree[1];
   end;
  end else begin
   if tree[1]>max then max:=tree[1];
  end;
 end;
 if abs(max)>max0 then max:=abs(max) else max:=max0;
 assign(f, 'trains.out');
 rewrite(f);
 writeln(f, max);
 close(f);
end.









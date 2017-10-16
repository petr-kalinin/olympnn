{Жарков Илья Николаевич 11 Г класс лицей-интернат "Центр одаренных детей" a08 задача a08_4.pas}
uses crt;
type mass=array[1..1000] of integer;
var
 a, b:mass;
 n, m, i, j, res:integer;
 f:text;
 procedure quick_sort(var c:mass; l, r:integer);
  var
   s, ll, sr, rr:integer;
   procedure exchange(i1, j1:integer);
    var
     t:integer;
    begin
     t:=c[i1]; c[i1]:=c[j1]; c[j1]:=t;
    end;
  begin
   if l+1<r then begin
    s:=c[random(r-l)+l+1];
    ll:=l; sr:=l; rr:=r;
    while sr<>rr do begin
     if c[sr+1]<s then begin
      exchange(sr+1, rr);
      dec(rr);
     end else if c[sr+1]>s then begin
      exchange(sr+1, ll+1);
      inc(sr);
      inc(ll);
     end else inc(sr);
    end;
    quick_sort(c, l, ll);
    quick_sort(c, rr, r);
   end;
  end;
begin
 randomize;
 assign(f, 'pots.in');
 reset(f);
 readln(f, n, m);
 for i:=1 to n-1 do read(f, a[i]); readln(f, a[n]);
 for i:=1 to m-1 do read(f, b[i]); readln(f, b[m]);
 close(f);
 quick_sort(a, 0, n);
 quick_sort(b, 0, m);
 res:=0;
 i:=0; j:=0;
 while (i<n) and (j<m) do begin
  if b[j+1]>=a[i+1] then begin
   inc(res);
   inc(i);
   inc(j);
  end else inc(i);
 end;
 assign(f, 'pots.out');
 rewrite(f);
 writeln(f, res);
 close(f);
end.


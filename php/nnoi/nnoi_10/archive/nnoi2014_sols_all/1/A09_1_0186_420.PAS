{Sozinov Daniil, 11, lyceum 87, n1, borland pascal}
var a,b,n,m,min1,max1,min2,max2:longint;
tmp:byte;
begin
assign (input, 'classics.in');
assign (output, 'classics.out');
reset (input);
rewrite (output);
read (a,b,n,m);
tmp:=0;
if (n=1) or (n=2) then min1:=1
   else min1:=2+(n-2)*(a-1);
if a<n then inc(min1);
if (m=1) or (m=2) then min2:=1
   else min2:=2+(m-2)*(b-1);
if b<m then inc(min2);
max1:=n*a-1;
max2:=m*b-1;
if (min1>max2) or (min2>max1) then begin
                                   write ('0 0');
                                   tmp:=1;
                                   end;
if tmp=0 then begin
              if (min1>min2) then write (min1)
                             else write (min2);
              write (' ');
              if (max1<max2) then write (max1)
                             else write (max2);
              end;
end.
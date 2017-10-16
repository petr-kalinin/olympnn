var f:text; {Cуворов Кирилл, Лицей №87}
    t,i,k:integer;
    N,L,R:LongInt;
    a: array [1..2,1..200000] of integer;
begin
 assign(f,'lottery.in');
 reset(f);
 readln(f,L,R,N);
 for i:=1 to N do
  read(f,a[1,i]);
  t:=1;
 if a[1,1]>L then
  begin
   k:=k+2;
     a[2,t]:=a[1,1]-1;
     a[2,t+1]:=a[1,1]+1;
     t:=t+2;
  end
             else
              begin
               k:=k+1;
               a[2,t]:=a[1,1]+1;
               t:=t+1;
              end;
 for i:=2 to n-1 do
  if (a[1,i]+1<>a[1,i+1])and(a[1,i]-1<>a[1,i-1]) then
    begin
     k:=k+2;
     a[2,t]:=a[1,i]-1;
     a[2,t+1]:=a[1,i]+1;
     t:=t+2;
    end
                                   else
                                    begin
                                     if a[1,i]+1=a[1,i+1] then
                                      begin
                                       k:=k+1;
                                       a[2,t]:=a[1,i]-1;
                                       t:=t+1;
                                      end;
                                     if a[1,i]-1=a[1,i-1] then
                                      begin
                                       k:=k+1;
                                       a[2,t]:=a[1,i]+1;
                                       t:=t+1;
                                      end;
                                    end;
   if (a[1,n]<R)and(a[1,n]-1<>a[1,n-1]) then

  begin
   k:=k+2;
     a[2,t]:=a[1,n]-1;
     a[2,t+1]:=a[1,n]+1;
     t:=t+2;
  end
             else
             if (a[1,n]=R)and(a[1,n]-1=a[1,n-1]) then
              begin
               k:=k+0;
               t:=t+0;
              end
                                                  else
                                                   begin
                                                   if a[1,n]<>R then
                                                   begin
                                                    k:=k+1;
                                                    a[2,t]:=a[1,n]+1;
                                                    t:=t+1;
                                                   end
                            else
                             begin
                              k:=k+1;
                              a[2,t]:=a[1,n]-1;
                              t:=t+1;
                             end;
              end;

 assign(f,'lottery.out');
 rewrite(f);
 writeln(f,k);
 for i:=1 to k do
 write(f,a[2,i],' ');
 close(f);
end.

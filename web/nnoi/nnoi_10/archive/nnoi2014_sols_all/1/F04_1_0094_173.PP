var f:text; {Cуворов Кирилл, Лицей №87}
    i,j,min,l,max,minA,minB,maxA,maxB:integer;
    A,B,N,M:Word;
begin
 assign(f,'classics.in');
 reset(f);
 readln(f,A,B);
 read(f,N,M);
 minA:=9999;
 minB:=9999;

 for i:=1 to A do
  for j:=0 to A-1 do
   begin
   l:=i+(A*(n-2))+j;
   if l<minA then minA:=l;
   if l>maxA then maxA:=l;
   end;

 for i:=1 to B do
  for j:=0 to B-1 do
   begin
   l:=i+(B*(M-2))+j;
   if l<minB then minB:=l;
   if l>maxB then maxB:=l;
   end;

 if ((minA<=minB)and(maxA>=minB)) or ((minB<=minA)and(maxB>=minA))
    then begin
         if (minA<=minB)and(maxA<=maxB) then begin min:=minB; max:=maxA; end;
         if (minA<=minB)and(maxA>=maxB) then begin min:=minB; max:=maxB; end;
         if (minB<=minA)and(maxB<=maxA) then begin min:=minA; max:=maxB; end;
         if (minB<=minA)and(maxB>=maxA) then begin min:=minA; max:=maxA; end;
         end;

 assign(f,'classics.out');
 rewrite(f);
 writeln(f,min,' ',max);
 close(f);
end.
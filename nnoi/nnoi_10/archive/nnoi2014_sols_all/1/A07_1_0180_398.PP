{Мария Верниковская класс10 задача2 }
VAR input,output:text;
    a,b,n,m,minA,minB,maxA,maxB,min,max:longint;
BEGIN

assign(input, 'classics.in');   reset(input);
assign(output, 'classics.out'); rewrite(output);

readln(input, a,b);
readln(input, n,m);

if n=1 then minA:=1 else minA:=(n-2)*a+1;
maxA:=n*a-1;
if m=1 then minB:=1 else minB:=(m-2)*a+1;
maxB:=m*b-1;
{if (maxB<minA) or (maxA<minB) then write(output, '0 0')
 else BEGIN}
      if minA>minB then min:=minA
                   else min:=minB;
      if maxA<maxB then max:=maxA
                   else max:=maxB;
      {END;}
write(output, min, ' ', max);

close(input); close(output);

END.

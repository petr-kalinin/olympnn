{Мария Верниковская класс10 задача5 }
VAR input,output:text;
    n,m,a,ost,i:longint;
    k,j:byte;
BEGIN

assign(input, 'powersum.in');   reset(input);
assign(output, 'powersum.out'); rewrite(output);

read(input, n,m,k);       ost:=0;
for i:=1 to n do BEGIN
                 a:=1;
                 for j:=1 to k do a:=a*i;
                 ost:=ost+(a mod m);
                 END;
ost:=ost mod m;
write(output, ost);

close(input); close(output);

END.

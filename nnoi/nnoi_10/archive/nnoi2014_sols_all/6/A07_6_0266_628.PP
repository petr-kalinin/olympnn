{Мария Верниковская класс10 задача6 }
VAR input,output:text;
    n,m,s,f,i,max:longint;
    k:array[1..100000] of longint;
BEGIN

assign(input, 'trains.in');   reset(input);
assign(output, 'trains.out'); rewrite(output);

readln(input, n,m);
for i:=1 to m do BEGIN
                 read(input, s, f, k[i]);
                 readln(input);
                 END;
max:=0;
for i:=1 to m do BEGIN
                 if k[i]>max then max:=k[i];
                 END;
write(output, max);

close(input); close(output);

END.

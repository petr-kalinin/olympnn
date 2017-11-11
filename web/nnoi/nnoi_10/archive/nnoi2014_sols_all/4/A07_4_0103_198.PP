{Мария Верниковская класс10 задача4 }
VAR input,output:text;
    i,j,n,m,k,a:integer;
    kast:array[1..1000] of integer;
    krsh:array[1..1000] of integer;

BEGIN

assign(input, 'pots.in');   reset(input);
assign(output, 'pots.out'); rewrite(output);

readln(input, n,m);
for i:=1 to n do read(input, kast[i]);
readln(input);
for i:=1 to m do read(input, krsh[i]);
for j:=n downto 2 do BEGIN
  for i:=1 to j-1 do BEGIN
                     if kast[i]>kast[i+1] then BEGIN
                                               a:=kast[i];
                                               kast[i]:=kast[i+1];
                                               kast[i+1]:=a;
                                               END;
                     END;
                     END;
for j:=m downto 2 do BEGIN
  for i:=1 to j-1 do BEGIN
                     if krsh[i]>krsh[i+1] then BEGIN
                                               a:=krsh[i];
                                               krsh[i]:=krsh[i+1];
                                               krsh[i+1]:=a;
                                               END;
                     END;
                     END;
k:=0; a:=0;
for i:=1 to m do BEGIN
                 if kast[i-a]=0 then break;
                 if kast[i-a]<=krsh[i] then k:=k+1
                 else a:=a+1;
                 END;
write(output, k);

close(input); close(output);

END.

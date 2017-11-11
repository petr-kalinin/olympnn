{$q+,r+,s+,i+,o+}
{$APPTYPE CONSOLE}
{$ifdef fpc}
{$mode delphi}
{$endif}
var f:text;
    ch:char;
begin
assign(f,paramstr(1));reset(f);
while not eof(f) do begin
      read(f,ch);
      if ch=#10 then begin
         writeln('Lonely #10 found!');
         halt;
      end else if ch=#13 then begin
          if eof(f) then begin
             writeln('#13 at eof');
             halt;
          end;
          read(f,ch);
          if ch<>#10 then begin
             writeln('#13 not followed by #10');
             halt;
          end;
      end;
end;
end.
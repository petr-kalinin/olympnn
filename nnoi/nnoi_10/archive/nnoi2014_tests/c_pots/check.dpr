{$APPTYPE CONSOLE}

uses 
  sysutils, testlib;

var
  n, m: longint;

begin
  n := ouf.ReadLongint;
  m := ans.ReadLongint;
  if (n <> m) then  quit(_wa, 'Expected ' + str(m) + ' but found ' + str(n));
  quit(_ok, '');
end.

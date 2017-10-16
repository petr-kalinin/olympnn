{$APPTYPE CONSOLE}
{$Q+,R+,I+,O-}
uses 
  testlib, sysutils;

const 
  MAX_N = 1000;
  MAX_M = 1000;
  MAX_K = 1000;

type 
  integer = longint;

var 
  i, n, m, k: integer;

begin
  n := inf.readInteger;
  if (n < 1) or (n > MAX_N) then quit(_pe, 'Bad number of pots');
  m := inf.readInteger;
  if (m < 1) or (m > MAX_M) then quit(_pe, 'Bad number of covers');
  for i := 1 to n do
  begin
	  k := inf.readInteger;
	  if (k < 1) or (k > MAX_K) then quit(_pe, 'Bad size of pot # ' + str(i));
  end;
  for i := 1 to m do
  begin
	  k := inf.readInteger;
	  if (k < 1) or (k > MAX_K) then quit(_pe, 'Bad size of cover # ' + str(i));
  end;
  if not inf.seekeof then quit(_pe, 'Not inf.seekeof');
  quit(_ok, '');
end.


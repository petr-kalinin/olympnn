{$APPTYPE CONSOLE}
{$Q+,R+,I+,O-}
uses 
  testlib, sysutils;

const 
  MAX_N = 1000000000;
  MAX_M = 1000000000;
  MAX_K = 20;

type 
  integer = longint;

var 
  n, m, k: integer;

begin
  n := inf.readInteger;
  if (n < 1) or (n > MAX_N) then quit(_pe, 'Bad N');
  m := inf.readInteger;
  if (m < 1) or (m > MAX_M) then quit(_pe, 'Bad M');
  k := inf.readInteger;
  if (k < 1) or (k > MAX_K) then quit(_pe, 'Bad K');
  quit(_ok, '');
end.


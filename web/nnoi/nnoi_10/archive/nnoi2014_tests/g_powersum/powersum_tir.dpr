{$H-,I+,OBJECTCHECKS+,Q+,R+,S-}
const MAX_K = 20;
      MAX_LOG_N = 1000;

var n, m, k : longint;
    c : array[0..MAX_K, 0..MAX_K] of int64;
    cacheC : array[1..MAX_K] of integer;
    cacheN : array[1..MAX_K, 1..MAX_LOG_N] of longint;
    cacheS : array[1..MAX_K, 1..MAX_LOG_N] of int64;

function pow2(kk : longint) : int64;
var b : int64;
begin
  if kk = 0 then pow2 := 1
  else if kk mod 2 = 1 then pow2 := (2 * pow2(kk - 1)) mod m
  else begin
    b := pow2(kk div 2);
    pow2 := (b*b) mod m;
  end;
end;

procedure compute_binomial;
var i, j : integer;
begin
  c[0, 0] := 1;
  for i := 1 to MAX_K do begin
    c[i, 0] := 1;
    c[i, i] := 1;
    for j := 1 to i-1 do c[i, j] := (c[i-1, j-1] + c[i-1, j]) mod m;
  end;
end;

function cachedSolution(nn, kk : longint) : int64;
var i : longint;
begin
  cachedSolution := -1;
  for i := 1 to cacheC[kk] do
    if cacheN[kk][i] = nn then
      cachedSolution := cacheS[kk][i];
end;

function solve(nn, kk : longint) : int64;
var s : int64;
    i : longint;
begin
  if nn = 0 then solve := 0 else
  if nn = 1 then solve := 1 else begin
    s := cachedSolution(nn, kk);
    if s < 0 then begin
      s := (pow2(kk) * solve(nn div 2, kk)) mod m;
      for i := 0 to kk do begin
        s := (s + (((pow2(i) * c[kk, i]) mod m) * solve(nn - (nn div 2) - 1, i)) mod m) mod m;
      end;
      s := (s + 1) mod m;
      cacheC[kk] := cacheC[kk] + 1;
      cacheN[kk, cacheC[kk]] := nn;
      cacheS[kk, cacheC[kk]] := s;
    end;
    solve := s;
  end;
end;

begin
  assign(input, 'powersum.in'); reset(input);
  assign(output, 'powersum.out'); rewrite(output);
  readln(n, m, k);
  compute_binomial;
  writeln(solve(n, k));
  close(output);
  close(input);
end.

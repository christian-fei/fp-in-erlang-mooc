-module(first).
-export([mult/2, double/1, area/3]).

mult(A, B) ->
  A * B.

double(A) ->
  mult(2, A).

area(A,B,C) ->
  S = (A+B+C) / 2,
  math:sqrt(S*(S-A)*(S-B)*(S-C)).

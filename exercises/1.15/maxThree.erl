-module(maxThree).
-export([maxThree/3, howManyEqual/3]).

maxThree(A, B, C) ->
  max(A, max(B, C)).

howManyEqual(A, B, C) ->
	eq(A,B) + eq(A,C) + eq(B,C).

eq(A, A) ->
  1;
eq(_, _) ->
  0.

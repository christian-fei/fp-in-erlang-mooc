-module(second).
-export([hypothenuse/1]).

hypothenuse(A) ->
  math:sqrt(math:pow(A,2) + math:pow(A,2)).

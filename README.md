Erlang has been built with concurrency and fault tolerance in mind.

Erlang has a functional basis. Everything in Erlang is a value, expressions whose values are calculated.

Erlang embraces Immutability. (== Objects whose state doesn't change).
If you want to change an object, create a new one!

Erlang has side-effects when it comes to it's communication mechanism.


# 1.5 Using the Erlang system

```
erl

>3+4.
 7
```

You end an expression with `.`.

Get the head of the list:

```
>head([2,3,4])
 2
```

VariableBinding:

```
>A=[2,3,4].
>head(A).
2
```

Unbind a variable:

```
>f(A).
```


Lambda:

```
(fun(X) -> X + X end)(99)
```


# 1.7 The basics of Erlang programming


You can declare a module with `-module(<modulename>).`

You can export function with `-export([<somefunction/arity>])`

You can compile a module in the Erlang shell with `c(<modulename>)`

You can declare a function like this:

```
somefunc(X) ->
  X * X.
```


# 1.8 Introducing more complicated functions

```
area(A,B,C) ->
  S = (A+B+C)/2,
  math:sqrt(S*(S-A)*(S-B)*(S-C)).
```

A function is a sequence of expressions, and the return value is the value of the last expression.


# 1.9 Erlang data: numbers and atoms

The following data types are available in Erlang:

- Numbers

- Atoms

- Booleans

- Tuples & Lists

- Strings

- Functions

Erlang is weakly typed, although you can use some tools like dializer to enforce some checks.


An atom is a piece of data that simply stands for it self.

These are examples of atoms:

```
foo.

'i am an atom'.

foo == foo.

true.
false.
```

E.g. atoms are useful for pattern matching, they can be used for equality, ordering, etc.

Interestingly, `true` and `false` are atoms!

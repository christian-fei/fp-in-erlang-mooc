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


# 1.10 Erlang data: numbers and atoms

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


# 1.11 Erlang data: Erlang data: tuples, lists and functions


### Tuples

With a tuple we can put values together. A tuple is a construct that can contain pieces of data:

```
{"Joe", "Armstrong", 42}

{1.1, 2.2}
```

Tuples are extensively used in Erlang.

A common Erlang idiom:

The first field of a tuple is used to indicate what sort of data is in the tuple.

We can use Tuples to describe complex types.

Typically Erlang tuples are heterogeneous: they contain different types of values.


### Lists


Lists are collections of values. Typically of the same type. Strings are also Lists.

Why tuples and lists? Especially since we could describe our data like this:

```
["Joe", "Armstrong", 42]
{"Joe", "Armstrong", 42}
```

We can view lists as being built up one item at a time. We can iterate over a list.
But more in the next week.


### Functions

Functions can be data themselves (they can be passed around):

```
fun (X) -> X * X end.
lists:map(fun (X) -> X + 1 end, [1,2,3])
```

### 1.13 Variables and Patterns

Variables are more like `names` for the value they are bound to. Variables cannot be updated, although you can pattern match against them.

If a variable isn't already bound, `=` bind a value to "variable" (actually it's a `name` in erlang, or `definitions`):

```
A = 3
```

Instead, if a variable *is* bound, the `=` checks the value (structur) of the assignment:

```
{A,B} = {2,3}.
```

In general, when you see a `=` sign in Erlang, it's a pattern match.

If the thing on the left is not already bound, it gets the value on the right.

If the thing on the left is bound, it check to see if it's equal to the value on the right.

### 1.14 Pattern matching

Patterns are matched in sequence.

You separate each clause with a semicolon `;`. The last clause end with a dot `.`. 

```
xOr(true, false) ->
  true;
xOr(false, true) ->
  true;
xOr(X, Y) ->
  false.
```

### 1.18 Recursion on Integers

Factorial as an example:

```
fac (0) ->
  1;
fac (N) ->
  fac(N-1) * N.
```

Interestingly, it reads like the actual mathematical definition:

> The factorial of 0 *is* 1
> The factorial of N *is* the product of the factorial of N-1 and N.

But what if the provided number is less than zero? The recursion would not end.

Guards!

```
fac (0) ->
  1;
fac (N) when N > 0 ->
  fac(N-1) * N.
```

A guard can contain arithmetic operations and comparisons. And they can be combined with `,`.

*But* you *can't* put user-defined functions as a guard. -> Use `case` expression.


### 1.21 Tail recursion

You can accumulate the partial result, by adding a second parameter to the `fib` function, like this:

```
fac (N) ->
  fac(N,1).

fac (0,Accumulator) ->
  P;
fac (N,Accumulator) ->
  fac(N-1, Accumulator * N).
```

This is a common pattern in `reducing` data in Erlang.

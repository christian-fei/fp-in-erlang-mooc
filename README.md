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





LEFT_OFF_AT : https://www.futurelearn.com/courses/functional-programming-erlang/1/steps/148015










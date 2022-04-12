# Subroutines and Loops
*Code examples: [functions.hs](functions.hs), [loops.hs](loops.hs)*

## Functions
First of all, functions in Haskell always returns something of a fixed type, similar to Java and C++.
```haskell
-- "multiply" is a function taking two numbers and return their product
multiply x y = x * y
putStrln (multiply 2 3) -- prints "6"
```

As you can see above, you technically don't need brackets to call functions. `multiply 2 3` is a call to `multiply` with two parameters `2` and `3`. As in Python, you can pass a function around as variables. However, Haskell functions are much much more powerful than that.

### Currying
Firstly, they are "currying". That means, if a function is declared to have $n$ variables, it actually takes only one variable and returns another function that takes $n-1$ variables. For example, given the functions `multiply` above:
```haskell
-- multiply takes 2 numbers and return 1, so it's type can be written as "Num -> Num -> Num"
multiply x y = x * y
-- "multiply 2" will returns a function of type "Num -> Num" (one Num is consumed),
-- which return a double of its input
double = multipy 2 
result = double 5 -- This will returns 10
```

### Pattern matching
Secondly, Haskell functions use "pattern matching" to match its parameter. You can define the same function multiple times, each with a different pattern of parameters, as long as those patterns are mutually exclusive and collectively exhaustive. Below is a mind-blowing example of how the Quick Sort algorithm can be defined succintly in a Haskell function.
```haskell
quickSort [] = []
quickSort (x:xs) = quickSort [t | t <- xs, t <= x] ++ [x] ++ [t | t <- xs, t > x]
```

### Misc
- **Is Haskells functions pass-by-reference or pass-by-value?** 
This is a wrong question for Haskell. This question is essentially concerned about side effects. Haskell has only definitions, not statements, so it is free of side effects. Therefore, it does not matter whether a parameter is passed by what, it will never be changed.

- **Can a function refer to another not-yet-declared function?** Yes. In the code example, `double` refers to `multiply` before it is declared.

## Loops
A loop in itself is imperative and is likely to have side effects. Due to its functional nature, Haskell does not have explicit loops like typical imperative languages like Python and C++. However, it certainly support ways to repeat operations.

The first way is to have recursive functions that have a counter parameter. The second way is to use list comprehension. Please refer to the code example for better demonstration.

## References
- https://wiki.haskell.org/Currying


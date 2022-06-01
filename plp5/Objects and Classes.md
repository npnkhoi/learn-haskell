# Object and Classes

Haskell has some data structures (i.e., classes) by default -- Bool, Int, Float, etc. But developers can define their own class as well. For example, we can define a new type called `Khoi` equivalent to `Bool` as followed:
```
data Khoi = True | False
```

We can also make more complex data structure, like a `Tree`:
```
data Tree a = Empty | Node a [Tree a]
```
This code will simultaneously define the `Empty` type (which means an empty tree), the `Node` type which contains a variable with type `a` (same as the `Tree`) and a list of Tree. For more details, you can read at [Making Our Own Types and Typeclasses](http://learnyouahaskell.com/making-our-own-types-and-typeclasses).

Haskell also has typeclasses. Typeclasses are like Java interfaces -- they ensure a variable have certain properties. Examples are:
- `Num` typeclass
- `Order` typeclass
- `Read` typeclass


## References
- https://stackoverflow.com/questions/5414323/does-haskell-support-object-oriented-programming
- http://learnyouahaskell.com/making-our-own-types-and-typeclasses
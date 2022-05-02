# Object and Classes (WIP)

The closest thing to an object in Haskell is a typeclass. Typeclasses are like Java interfaces -- they ensure a variable have certain properties. Examples are:
- `Num` typeclass
- `Order` typeclass
- `Read` typeclass

You may ask: how does Haskell glue data and methods together like in OOP? That can be achieve via `let` and `where` bindings inside functions and lists, but it is still limited in OOP sense. That is reasonable -- Haskell is purely functional, and it has its own way to achieve the tasks without using OOP concepts.

## References
- https://stackoverflow.com/questions/5414323/does-haskell-support-object-oriented-programming
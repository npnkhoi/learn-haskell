# Names, Types and Binding

## Naming

### Rules

All identifiers in Haskell is either a variable identifier or a constructor identifier. 

A variable identifier must consist of a lowercase letter, followed by (zero or more) letters, digits and single quotes (`'`). Especially, an underscore is treated as a lowercase letter in Haskell.

A constructor identifier follows the same rule as variable one, except that it must start with an uppercase letter.

For example, `sum_all`, `aDog`, `ng'phung'nhat'khoi_pro` and `BlackTailAfterDeadCat09` are all valid identifiers, where the first three are variables and the last is a constructor. Meanwhile, `1thing`, `###` and `'foo` are not legal identifiers. See [variables.hs](variables.hs) for code examples.

### Conventions

Regarding naming conventions, the [community suggests](https://wiki.haskell.org/Programming_guidelines#Naming_Conventions) that all identifieres should be in lowerCammelCase or UpperCammelCase, depending on whether it must start with a lowercase letter.

### Reserved words
There are about 55 reserved words in Haskell [3].

## Typing
Please refer to [types.hs](types.hs) for code examples.

Primitive types are: 
- `Int`: 32-bit integers
- `Integer`: "Big" integer (bounded only by machine's memory)
- `Float`: single-precision (32-bit) floating point numbers
- `Double`: double-precision (64-bit) floating point numbers
- `Char`: a character

More complex types are: list, tuple, string (list of characters).

Functions behave very much like variables. Its type is the combination of the types of its input and output. Functions can use *type variables*, like `[a] -> a` if it works with generic types. (This is called polymophic functions.) 

### Operate on variables
We can do operations on variables by using functions (operators are also functions). Each function has its own definition of its input(s) and output. Such definition can consist of explicit types, type variables or *type classes*. A type class is like an interface of types (think Java).

For example, the function/operator `<` only compare two things from the same type, which must belongs to the `Ord` type class.

When we want to do operations on mixed types, we have to find functions to convert the types. For instance, we can use `read` to do operations on string and other types:
```
Prelude> read "[1, 2]" ++ [3]
[1,2,3]
```

Or we can use `fromIntegral` to convert from `Integral` (whole numbers) to generic `Num`:
```
Prelude> fromIntegral (length [1, 2, 3]) - 3
0
```

Input for the `read` function must be from a type "implementing" the `Read` type class.

### Characteristics

- strong or weeak?
- static typing
- explicit or implicit
- immutability
- operators: for each type, mixed-type?
- binding time

### Discussion

## References
- [1] https://www.haskell.org/onlinereport/haskell2010/
- [2] https://wiki.haskell.org/Programming_guidelines
- [3] https://wiki.haskell.org/Keywords
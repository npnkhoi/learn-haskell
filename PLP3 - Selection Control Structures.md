# Selection Control Structures
_Code example: [selectionControls.hs](selectionControls.hs)_

### Boolean type
Boolean values are True and False, of type Bool. Unlike C++ and Python, numbers are not used as boolean is conditional statements in Haskell.
```
flag = True 
```

### Conditional statements

If statement are written in ternary manner, and can be chained.

```
x = if flag then 1 else 2
```

Haskell also has `case` statement to run conditional codeblocks based on the value of a variable.
```
y = case x of 
    (1) -> "one" 
    (2) -> "two"
    _ -> "other"
```

As shown above, codeblocks are delimited by keywords like `if`, `then`, `else` and `case`.

### Notes
Shortcircuit is always applied. Haskell is lazy.
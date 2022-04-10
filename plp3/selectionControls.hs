-- flag is a boolean variable
-- Haskell booleans are True and False
flag = True 

-- if-else statement is written in ternary manner
x = if flag then 1 else 2
-- we also have case statement

y = case x of 
    (1) -> "one" 
    (2) -> "two"
    _ -> "other"

z = if y == "one" then 1
    else if y == "two" then 2
    else 0

-- Shortcircuit is always applied. Haskell is lazy.
anotherFlag = True && (1/0 == 0)
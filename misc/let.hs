{- 
let is an expression in itself
  like "with these definitions, return this expression".
It is like how we declare variables before calculation
  in imperative programming.
-}
mulXY = let (x, y) = (5, 6) in x * y

squareList = let square x = x * x 
  in [square 1, square 2, square 3]

{-
Inside list comprension, `let` is used without the `in`.
The definitions will be used in 2 places:
1. before the pipe `|` 
2. after the `let` itself
-}
calcBmis xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2]  

main = do
  print mulXY
  print squareList
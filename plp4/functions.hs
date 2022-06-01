-- Function to double a number
-- It uses currying, and also uses an not-yet-defined function
double = multiply 2
-- Function to multiply 2 numbers
multiply x y = x * y

-- Function to split a string by the first space character
splitBySpace x (' ':y) = [x, y]
splitBySpace x (yHead:y) = splitBySpace (x ++ [yHead]) y
splitBySpace x [] = error "No space"
-- Asign the result of the function
splitted = splitBySpace "" "khoi nguyen"

-- Definition of Quick Sort algorithm
-- => functions do pattern matching for their parameters
quickSort [] = []
quickSort (x:xs) = quickSort [t | t <- xs, t <= x] ++ [x] ++ quickSort [t | t <- xs, t > x]
-- Yes, that's it -- the shortest implementation ever!

main = do
  print (double 2) -- print 4
  print (multiply 2 4) -- print 8
  print splitted -- print ["khoi","nguyen"]
  print (quickSort [4, 2, 1, 3]) -- print [1, 2, 3, 4]
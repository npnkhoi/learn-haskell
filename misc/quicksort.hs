quickSort [] = []
quickSort (x:xs) = 
  quickSort [t | t <- xs, t <= x] 
  ++ [x] 
  ++ quickSort [t | t <- xs, t > x]

main = do
  print (quickSort [7, 6, 8, 5, 3, 2, 5, 1, 0])


qs [] = []
qs (x:xs) = qs [t | t <- xs, t <= x] ++ [x] ++ [t | t <- xs, t > x]
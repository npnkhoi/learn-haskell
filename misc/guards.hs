-- Guards help with selection control inside a function,
-- avoiding many if statements
judge x
  | (x `mod` 3) == 0 = "divisible by 3"
  | (x `mod` 3) == 1 = "rem 1"
  | otherwise = "rem 2"

-- We can write the guards inline, but it's less readable
max' a b | a > b = a | otherwise = b

-- For variables and helper methods in the where clause,
-- everything inside where is usable in all the guards
betterJudge x
  | rem x == zero = "divisible by 3"
  | rem x == 1 = "rem 1"
  | otherwise = "rem 2"
  where 
    rem x = mod x 3 -- helper methods can be chained!
    zero = 0

main = do
  putStrLn (judge 15)
  putStrLn (betterJudge 15)
  print (max' 3 4)
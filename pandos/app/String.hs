module String (
  startsWith,
  split,
  slice
) where

startsWith "" text = True
startsWith (x:xs) "" = False
startsWith (x:xs) (y:ys) = (x == y) && startsWith xs ys

-- https://stackoverflow.com/questions/4597820/does-haskell-have-list-slices-i-e-python
slice from to xs = take (to - from + 1) (drop from xs)

split text delimiter = splitIterator text delimiter [] ""
splitIterator text delimiter list currentStr
  | text == "" = if currentStr == "" then list else list ++ [currentStr]
  | head text == delimiter = splitIterator (tail text) delimiter (list ++ [currentStr]) ""
  | otherwise = splitIterator (tail text) delimiter list (currentStr ++ [head text])
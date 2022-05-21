-- type Content = [[Char]]
-- type AdjList = [[Int]]

allChildren adj node = [child | child <- adj!!node]

dfs adj content visited (x:xs) = dfs adj content
  (visited ++ [content!!x]) (allChildren adj x ++ xs)
dfs adj content visited [] = visited

preOrder adj content = dfs adj content [] [0]

main = do
  let adj = [[1, 2], [], []]
  let content = ["a", "b", "c"]
  -- print (allChildren adj 0)
  -- print (preOrder adj content)
  print (dfs adj content [] [0])
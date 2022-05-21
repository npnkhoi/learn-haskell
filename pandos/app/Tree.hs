module Tree( 
  Tree (..),
  createNode,
  getLeafContent
) where

data Tree a = 
  Empty | Node {content :: a, children :: [Tree a]} 
  deriving (Show)

createNode nodeType textBlock = Node nodeType [Node textBlock []]

getLeafContent node = content (head (children node))

try = do
  let node = createNode "Para" "nhithun"
  print (getLeafContent node)
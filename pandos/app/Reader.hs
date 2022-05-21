module Reader (
  markdownToAST
) where

import Tree

startsWith "" text = True
startsWith (x:xs) "" = False
startsWith (x:xs) (y:ys) = (x == y) && startsWith xs ys

split text delimiter = splitIterator text delimiter [] ""
splitIterator text delimiter list currentStr
  | text == "" = if currentStr == "" then list else list ++ [currentStr]
  | head text == delimiter = splitIterator (tail text) delimiter (list ++ [currentStr]) ""
  | otherwise = splitIterator (tail text) delimiter list (currentStr ++ [head text])

isHeading1 textBlock = startsWith "#" textBlock && not (startsWith "##" textBlock)
isHeading2 textBlock = startsWith "##" textBlock && not (startsWith "###" textBlock)
isHeading3 textBlock = startsWith "###" textBlock && not (startsWith "####" textBlock)
isPara textBlock = not (startsWith "#" textBlock)

createNode nodeType textBlock = Node nodeType [Node textBlock []]

textBlockToNode textBlock
  | isHeading1 textBlock = createNode "Heading 1" textBlock
  | isHeading2 textBlock = createNode "Heading 2" textBlock
  | isHeading3 textBlock = createNode "Heading 3" textBlock
  | isPara textBlock = createNode "Para" textBlock

blockListToNodeList blockList = [textBlockToNode block | block <- blockList]

markdownToAST markdownText =
  Node "Doc" nodeList where
    blockList = split markdownText '\n'
    nodeList = blockListToNodeList blockList

try :: IO ()
try = do
  let contents = "#Head\nBody"

  -- Processing
  let blockList = split contents '\n'
  print blockList
  print ([isHeading1 block | block <- blockList])
  print ([isHeading2 block | block <- blockList])
  print ([isHeading3 block | block <- blockList])
  print ([isPara block | block <- blockList])
  print (createNode "Para" "abc")
  print (textBlockToNode "#abc")
  let nodeList = blockListToNodeList blockList
  -- let doc = Node "Doc" nodeList
  
  let doc = markdownToAST contents
  print doc

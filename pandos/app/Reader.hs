module Reader (
  markdownToAST
) where

import Tree
import String

isHeading1 textBlock = startsWith "#" textBlock && not (startsWith "##" textBlock)
isHeading2 textBlock = startsWith "##" textBlock && not (startsWith "###" textBlock)
isHeading3 textBlock = startsWith "###" textBlock && not (startsWith "####" textBlock)
isPara textBlock = not (startsWith "#" textBlock)

textBlockToNode textBlock
  | isHeading1 textBlock = createNode "Heading 1" (tail $ tail textBlock)
  | isHeading2 textBlock = createNode "Heading 2" (tail $ tail $ tail textBlock)
  | isHeading3 textBlock = createNode "Heading 3" (tail $ tail $ tail $ tail textBlock)
  | isPara textBlock = createNode "Para" textBlock
  | otherwise = error "Invalid Markdown syntax"

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

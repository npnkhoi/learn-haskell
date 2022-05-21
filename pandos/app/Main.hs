module Main where

import Tree
import Reader (markdownToAST)
import Data.Char
import System.IO
import Writer (astToLatex)
import Control.Monad (when)


main :: IO ()
main = do
  putStrLn "-----------------------------------------------------"
  putStrLn "Pandos, proudly implemented in Haskell by Khoi Nguyen"
  putStrLn "-----------------------------------------------------"

  -- Read the file
  let list = []
  handle <- openFile "test.md" ReadMode
  contents <- hGetContents handle

  -- Markdown -> AST
  let doc = markdownToAST contents
  print doc

  -- AST -> Latex
  let node = createNode "Heading 1" "nhithun"
  print (getLeafContent node)
  let latex = astToLatex doc
  putStrLn latex

  -- Write the file
  let output = "test.tex"
  writeFile output latex

  -- Clean up
  hClose handle
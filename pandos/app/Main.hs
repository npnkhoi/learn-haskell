module Main where

import Tree
import Reader (markdownToAST)
import Data.Char
import System.IO



main :: IO ()
main = do
  putStrLn "-----------------------------------------------------"
  putStrLn "Pandos, proudly implemented in Haskell by Khoi Nguyen"
  putStrLn "-----------------------------------------------------"

  -- Read the file
  let list = []
  handle <- openFile "test.md" ReadMode
  contents <- hGetContents handle
  hClose handle

  -- Markdown -> AST
  let doc = markdownToAST contents
  print doc

  -- AST -> Latex
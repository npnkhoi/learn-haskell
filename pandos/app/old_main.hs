import System.IO
    ( hClose, openFile, hGetContents, IOMode(ReadMode) )
-- import Control.Monad


main = do
  -- Read the file
  let list = []
  handle <- openFile "test.md" ReadMode
  contents <- hGetContents handle
  print contents
  print (head contents)
  hClose handle
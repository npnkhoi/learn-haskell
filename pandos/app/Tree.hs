module Tree (
  Tree(..)
) where

data Tree a = Empty | Node a [Tree a] deriving Show
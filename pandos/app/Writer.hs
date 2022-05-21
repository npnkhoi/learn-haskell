module Writer (
  astToLatex
) where

import Tree

-- only for leafNode
nodeToLatex node
  | content node == "Heading 1" = "\\section{" ++ getLeafContent node ++ "}\n"
  | content node == "Heading 2" = "\\subsection{" ++ getLeafContent node ++ "}\n"
  | content node == "Heading 3" = "\\subsubsection{" ++ getLeafContent node ++ "}\n"
  | content node == "Para" = getLeafContent node ++ "\n"
  | otherwise = error "Unrecognized node type"

join = joinIter ""
joinIter result strList
  | null strList = result
  | otherwise = joinIter (result ++ head strList) (tail strList)
astToLatex doc =
  "\\documentclass{article}\n\\begin{document}\n"
   ++ join [nodeToLatex node | node <- children doc]
   ++ "\\end{document}"
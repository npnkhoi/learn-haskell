-- A recursive function to print numbers from 1 to N
-- This function acts like a loop
printToN n = if n >= 1 then 
  do
    printToN (n-1)
    print n
  else
    return ()
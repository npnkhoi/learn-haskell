-- Declarations
anInteger = 2
aCharacter = 'a'
aString = "haskell is great"
aFloat = 1.7
aBoolean = True
aList = [1,2..10]

-- Cool examples
-- List comprehension in Haskell is absolutely powerful.
pythagores = [(a, b, c) | a <- [1..10], b <- [1..10], c <- [1..10], a*a + b*b == c*c, a <= b]
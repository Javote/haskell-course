-- Question 1
-- Add the type signatures for the functions below and then remove the comments and try to compile.
-- (Use the types presented in the lecture.)

-- f1 x y z = x ** (y/z)

f1 :: Double -> Double -> Double -> Double
f1 x y z = x ** (y / z)

-- f2 x y z = sqrt (x/y - z)

f2 :: Double -> Double -> Double -> Double
f2 x y z = sqrt (x / y - z)

-- f3 x y = [x == True] ++ [y]

f3 :: Bool -> Bool -> [Bool]
f3 x y = [x == True] ++ [y]

-- f4 x y z = x == (y ++ z)

f4 :: String -> String -> String -> Bool
f4 x y z = x == (y ++ z)

-- Question 2
-- Why should we define type signatures of functions? How can they help you? How can they help others?

{-
Type signatures help by catching errors early and improving code clarity.
-}

-- Question 3
-- Why should you define type signatures for variables? How can they help you?

{-
It can be helpful to define type signatures for variables to make compiler errors more understandable.
-}

-- Question 4
-- Are there any functions in Haskell that let you transform one type to the other? Try googling for the answer.

{-
The function `show` converts a type to String; the function `read` parses a String into a specified type.
-}

-- Question 5
-- Can you also define in Haskell list of lists? Did we showed any example of that? How would you access the inner
-- most elements?

{-
Yes. In Haskell, a String is a list of characters. A line in a text document can be considered a list of Strings.
-}
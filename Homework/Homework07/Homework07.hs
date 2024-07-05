-- Question 1
-- Investigate the `Bounded` type class. What behaviours it provides?

-- The `Bounded` type class checks the maximum and minimum values of a type.

-- Question 2
-- The types Int and Word bellong to the same type classes. What is the difference
-- between them? Check maybe the maxBound and minBound parameter for both types.

-- Int represents signed integers, Word represents unsigned integers

-- Question 3
-- Investigate the `Enum` type class. What behaviours provides?

-- Enum defines operations in ordered types

-- Question 4
-- Add the most general type signatures possible to the functions below.
-- Then uncomment the functions and try to compile.

--f1 x y z = show (x / y) ++ z

--f2 x = if x == maxBound then minBound else succ x

-- f1 :: (Show a, Fractional a) => a -> a -> [Char] -> [Char]
f1 :: (Show a, Fractional a) => a -> a -> [Char] -> [Char]
f1 x y z = show (x / y) ++ z

f2 :: (Eq a, Bounded a, Enum a) => a -> a
f2 x = if x == maxBound then minBound else succ x

-- Question 5
-- Investigate the numeric type classes to figure out which behaviors they provide to change between numeric types.

module Length where

-- Manual Recursion
length' :: [Int] -> Int
length' [] = 0
length' (_:xs) = 1 + length' xs

-- using foldr
lengthR :: [Int] -> Int
lengthR = foldr (\x y -> 1 + y) 0

-- using foldl
lengthL :: [Int] -> Int
lengthL = foldr (\x y -> x + 1) 0

-- Run in your browser:
-- https://repl.it/@aymannadeem/Length

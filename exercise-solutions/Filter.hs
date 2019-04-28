module Filter where

-- Manual Recursion
filter' :: (a -> Bool) -> [a] -> [a]
filter' p [] = []
filter' p (x:xs)
  | p x == True = [x]
  | otherwise = filter' p xs

-- Using foldr
filterFold :: (a -> Bool) -> [a] -> [a]
filterFold p = foldr (\x acc -> if p x then x : acc else acc) []

-- Run in your browser:
-- https://repl.it/@aymannadeem/filterFold

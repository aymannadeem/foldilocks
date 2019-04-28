module Reverse where

-- Manual Recursion
reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

-- Using foldl
reverseFold :: [a] -> [a]
reverseFold = foldl (\acc x -> x : acc) []

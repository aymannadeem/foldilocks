module Head where

-- Manual Recursion
head' :: [a] -> a
head' [] = error "empty list! bye felicia"
head' (x:xs) = x

-- Using foldr1
headFold :: [a] -> a
headFold = foldr1 (\x _ -> x)

-- Run in your browser:
-- https://repl.it/@aymannadeem/Head

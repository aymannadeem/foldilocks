module Last where

-- Manual Recursion
last' :: [a] -> a
last' [x] = x
last' (_:xs) = last' xs
last' [] = error "this is an empty list! bye felicia"

-- Using foldl1
lastFold :: [a] -> a
lastFold = foldl1 (\_ x -> x)

-- Run in your browser:
-- https://repl.it/@aymannadeem/Last

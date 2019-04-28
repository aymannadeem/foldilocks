module InMaElement where

-- Manual Recursion
elem' :: (Eq a) => a -> [a] -> Bool
elem' a [] = False
elem' a (x:xs)
    | a == x    = True
    | otherwise = a `elem'` xs

-- Using foldl
elemFold :: (Eq a) => a -> [a] -> Bool
elemFold y ys = foldl (\acc x -> if x == y then True else acc) False ys

-- Idiomatic, concise, eta-reduced using foldl:
elemFold' :: (Eq a) => a -> [a] -> Bool
elemFold' y = foldl (\acc x -> x == y || acc) False

-- Run in your browser:
-- https://repl.it/@aymannadeem/elemFold

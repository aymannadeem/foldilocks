module Product where

-- Manual Recursion
product' :: (Num a) => [a] -> a
product' [] = 1
product' (x:xs) = x * product' xs

-- Using foldr
productFold :: (Num a) => [a] -> a
productFold = foldr (*) 1

-- Run in your browser:
-- https://repl.it/@aymannadeem/productFold

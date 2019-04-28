module Map where

-- Manual Recursion
map' :: (a -> b) -> [a] -> [b]
map' f [] = []
map' f (x:xs) = f x : map' f xs

-- using foldr
mapFold :: (a -> b) -> [a] -> [b]
mapFold f = foldr (\ x zs -> f x : zs) []

-- using function composition
mapFold' :: (a -> b) -> [a] -> [b]
mapFold' f = foldr ((:).f) []

-------------------------
-- Fun fact:

-- The fusion law for map states that composing two
-- maps is equivalent to single map with the two
-- functions composed:
-- map f . map g = map (f . g)

-- Fusing these two maps allows us to make code
-- a lot more efficient.
-------------------------

-- Run in your browser:
-- https://repl.it/@aymannadeem/Map

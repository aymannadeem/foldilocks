module Max where

-- Manual Recursion
maximum' :: Ord a => [a] -> a
maximum' [] = error "bye felica"
maximum' [x] = x
maximum' (x:xs)
  | x > maxTail = x
  | otherwise = maxTail
  where maxTail = maximum' xs

-- Using foldr1
maxFold :: (Ord a) => [a] -> a
maxFold = foldr1 (\x acc -> if x > acc then x else acc)

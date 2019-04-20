head' :: [a] -> a
head' = foldr1 (\x _ -> x)

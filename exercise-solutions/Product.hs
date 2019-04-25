product' :: (Num a) => [a] -> a
product' = foldr (*) 1

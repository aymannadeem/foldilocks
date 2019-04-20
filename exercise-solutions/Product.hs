product' :: (Num a) => [a] -> a
product' = foldr1 (*)

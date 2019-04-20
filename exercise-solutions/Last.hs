last' :: [a] -> a
last' = foldl1 (\_ x -> x)

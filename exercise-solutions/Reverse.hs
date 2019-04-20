reverse' :: [a] -> [a]
reverse' = foldl (\acc x -> x : acc) []

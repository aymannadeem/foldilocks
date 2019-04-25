module ElemFold (elem') where

elem' :: (Eq a) => a -> [a] -> Bool
elem' y = foldr (\x acc -> x == y || acc) False

module ShowFold (showB) where

foldB Empty = mempty
foldB (Leaf a) = a
foldB (Branch a b) = foldB a <> foldB b

-- TODO: Write a function like showB, directly recursively
showFold :: (Show a) => B a -> String
-- go buckwild but visit entire tree,
-- THEN define in terms of foldB'

module BinaryTree (foldB') where

-- This is our Binary Tree:
data B a = Empty | Leaf | B (Branch a) (Branch a)

-- This is how we pattern match to recursively traverse our binary tree:
foldB Empty = mempty
foldB (Leaf a) = a
foldB (Branch a b) = foldB a <> foldB b

-- We can use foldMap to map each element to
-- a monoid, and combine the results:
foldBMap :: (Monoid b) => (a -> b) -> B a -> b

-- 
foldB' :: (b -> b -> b) -> (a -> b) -> b -> B a -> b
foldB' f g h (Branch a b) = foldB' f g h a `f` foldB' f g h a
foldB' f g h (Leaf a) = g a
foldB' f g h Empty = h

foldB'' :: (b -> b -> b) -> (a -> b) -> b -> B a -> b
foldB'' branch leaf empty (Branch a b) = foldB' branch leaf empty a `branch` foldB' branch leaf empty a
foldB'' branch leaf empty (Leaf a) = leaf a
foldB'' branch leaf empty Empty = empty

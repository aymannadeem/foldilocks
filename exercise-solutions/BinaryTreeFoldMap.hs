module BinaryTree (BinaryTree) where

-- This is a binary tree:
data BinaryTree a = Empty | Leaf a | Branch (BinaryTree a) (BinaryTree a)

-- This is a Foldable instance for our Binary Tree,
-- using foldMap to satisfy the minimally complete definition:
instance Foldable BinaryTree where
   foldMap f Empty = mempty
   foldMap f (Leaf x) = f x
   foldMap f (Branch l r) = foldMap f l `mappend` foldMap f r

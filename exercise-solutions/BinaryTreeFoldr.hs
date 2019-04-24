module BinaryTree (BinaryTree) where

-- This is a binary tree:
data BinaryTree a = Empty | Leaf a | Branch (BinaryTree a) (BinaryTree a)

-- This is a Foldable instance for our Binary Tree,
-- using foldr to satisfy the minimally complete definition:
instance Foldable BinaryTree where
  foldr f z Empty = z
  foldr f z (Leaf x) = f x z
  foldr f z (Branch l r) = foldr f (foldr f z r) l

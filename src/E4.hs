module E4 where

solve4 :: Int
solve4 = maximum [ z | x <- [100..999], y <- [100..999], let z = x*y, palindrome z ]
    where palindrome x = show x == reverse (show x)
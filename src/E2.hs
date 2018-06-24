module E2 where

fibs :: [Integer]
fibs = fibGen 1 1
    where fibGen x y = x:(fibGen y (x+y))

solve2 :: Integer
solve2 = sum $ filter even $ takeWhile (< 4000000) fibs
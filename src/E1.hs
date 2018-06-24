module E1 where

solve1 :: String
solve1 = show $ sum [ x | x <- [1..999], x `divBy` 3 || x `divBy` 5]
    where x `divBy` y = x `mod` y == 0
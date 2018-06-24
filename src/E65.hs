module E65 where

import Data.Char (digitToInt)
import Data.Ratio (numerator)

calc :: [Rational] -> Rational
calc = foldr1 (\x y -> x + 1 / y)

solve65 :: Int
solve65 = sum $ map digitToInt $ show $ numerator value
    where characteristic = 2:concat [ [1,x,1] | x <- map (2*) [1..] ] -- [2, 1,2,1, 1,4,1, 1,6,1, ...]
          value = calc $ take 100 characteristic
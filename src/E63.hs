module E63 where

import Data.List (genericLength)

countValidPowers :: Integer -> Integer
countValidPowers b = genericLength $ filter (\(p,l) -> p == l) $ takeWhile (\(p, l) -> l >= p) powers
    where powers = map (\p -> (p, length $ show $ b^p)) [1..]

solve63 :: Integer
solve63 = sum $ map countValidPowers [1..9]
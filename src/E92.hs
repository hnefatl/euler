module E92 where

import Data.Char (digitToInt)

endsAt89 :: Int -> Bool
endsAt89 1 = False
endsAt89 89 = True
endsAt89 n = endsAt89 $ sum $ map ((^2) . digitToInt) $ show n

solve92 :: Int
solve92 = length $ filter endsAt89 [1..9999999]
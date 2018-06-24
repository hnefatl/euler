module E69 where

import qualified Data.Set as S
import Data.Foldable (maximumBy)
import Data.Ord (comparing)

primes :: [Int]
primes = 2:[ p | p <- [3..], and [ rem p i /= 0 | i <- takeWhile (\i -> i^2 <= p) primes ] ]

relPrime :: Int -> Int -> Bool
relPrime x y = all (\d -> rem x d /= 0 || rem y d /= 0) divisors
    where divisors = takeWhile (< x) primes

phi :: Int -> Int
phi n = length [ x | x <- [1..n-1], relPrime n x ]

-- Too slow, as expected
solve69 :: Int
solve69 = maximumBy (comparing (\n -> fromIntegral n / fromIntegral (phi n))) [1..1000000]
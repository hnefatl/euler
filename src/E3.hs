module E3 where

primes :: [Integer]
primes = 2:[ p | p <- [3..], and [ rem p i /= 0 | i <- takeWhile (\i -> i^2 <= p) primes ] ]

solve3 :: Integer
solve3 = last [ d | d <- takeWhile (\p -> p^2 <= x) primes, rem x d == 0 ]
    where x = 600851475143
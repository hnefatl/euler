module E97 where

-- Computes 2^n (mod m) using the exponentiation by squaring approach
exp2mod :: Integer -> Integer -> Integer
exp2mod n m
    | n <= 1 = 2^n `mod` m
    | even n = (exp2mod (n `div` 2) m)^2 `mod` m
    | odd n  = 2 * (exp2mod (n `div` 2) m)^2 `mod` m

solve97 :: Integer
solve97 = (1 + 28433 * (exp2mod 7830457 digits)) `mod` digits
    where digits = 10^10
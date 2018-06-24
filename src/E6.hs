module E6 where

solve6 :: Integer
solve6 = abs $ sumsq - sqsum
    where sumsq = sum [ x^2 | x <- [1..100] ]
          sqsum = (sum [1..100])^2
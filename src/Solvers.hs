module Solvers (solutions) where

import qualified Data.Map as M

import E1
import E2
import E3
import E4
import E5
import E6
import E63
import E65
import E69
import E81
import E92
import E97

solutions :: M.Map Int String
solutions = M.fromList
    [
        (1 , show solve1),
        (2 , show solve2),
        (3 , show solve3),
        (4 , show solve4),
        (5 , show solve5),
        (6 , show solve6),
        (63, show solve63),
        (65, show solve65),
        (69, show solve69),
        (81, show solve81),
        (92, show solve92),
        (97, show solve97)
    ]
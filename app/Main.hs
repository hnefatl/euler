module Main where

import System.Environment (getArgs)
import Text.Read (readMaybe)
import Safe (headMay)
import Solvers (solutions)
import qualified Data.Map as M

main :: IO ()
main = do
    args <- getArgs
    case headMay args of
        Nothing -> putStrLn "Usage: solve <problem number>"
        Just s  -> case readMaybe s of
                    Nothing -> putStrLn "Invalid problem number"
                    Just n  -> printSolution n

printSolution :: Int -> IO ()
printSolution n = case M.lookup n solutions of
                    Nothing -> putStrLn "Problem not solved yet"
                    Just x  -> putStrLn x
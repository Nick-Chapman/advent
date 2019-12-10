
module Main (main) where

import System.Environment (getArgs)
import qualified Day1
import qualified Day2
import qualified Day3
import qualified Day4
import qualified Day5
import qualified Day6
import qualified Day7
import qualified Day8
import qualified Day9
import qualified Day10

import qualified Assemble

main :: IO ()
main = do
  args <- getArgs
  case args of
    ["--ass"] -> Assemble.main
    _ -> mapM_ runDay (case args of [] -> [1..9]; args -> map read args)

runDay :: Int -> IO ()
runDay day =
  [   Day1.main
    , Day2.main
    , Day3.main
    , Day4.main
    , Day5.main
    , Day6.main
    , Day7.main
    , Day8.main
    , Day9.main
    , Day10.main
    ] !! (day - 1)

module Main (main) where

import System.Environment (getArgs)
import Minfree (minfree)

main :: IO ()
main =  do
  [xs] <- getArgs
  print $ minfree $ read xs

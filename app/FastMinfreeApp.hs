module Main (main) where

import           Minfree            (minfree')
import           System.Environment (getArgs)

main :: IO()
main =  do
  [xs] <- getArgs
  print $ minfree' $ read xs

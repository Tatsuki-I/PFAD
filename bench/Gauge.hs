module Main (main) where

import           Gauge

import           Minfree

main :: IO ()
main =
  defaultMainWith (defaultConfig {displayMode=Condensed, quickMode=True})
    [ bgroup "fast minfree (whnf)"
        [ bench "n=1"     $ whnf minfree' [0..1]
        , bench "n=10"    $ whnf minfree' [0..10]
        , bench "n=100"   $ whnf minfree' [0..100]
        , bench "n=100"   $ whnf minfree' [0..1000]
        , bench "n=10000" $ whnf minfree' [0..10000]
        ]
    , bgroup "slow minfree (whnf)"
        [ bench "n=1"     $ whnf minfree [0..1]
        , bench "n=10"    $ whnf minfree [0..10]
        , bench "n=100"   $ whnf minfree [0..100]
        , bench "n=100"   $ whnf minfree [0..1000]
        , bench "n=10000" $ whnf minfree [0..10000]
        ]
    , bgroup "fast minfree (nf)"
        [ bench "n=1"     $ nf minfree' [0..1]
        , bench "n=10"    $ nf minfree' [0..10]
        , bench "n=100"   $ nf minfree' [0..100]
        , bench "n=100"   $ nf minfree' [0..1000]
        , bench "n=10000" $ nf minfree' [0..10000]
        ]
    , bgroup "slow minfree (nf)"
        [ bench "n=1"     $ nf minfree [0..1]
        , bench "n=10"    $ nf minfree [0..10]
        , bench "n=100"   $ nf minfree [0..100]
        , bench "n=100"   $ nf minfree [0..1000]
        , bench "n=10000" $ nf minfree [0..10000]
        ]
    ]

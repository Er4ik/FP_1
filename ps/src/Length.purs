module Length where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Data.List (List(..))

length :: forall a. List a -> Int
length xs = go 0 xs
  where
    go :: Int -> List a -> Int
    go acc Nil = acc
    go acc (Cons _ xs) = go (acc + 1) xs


test :: Effect Unit
test = do
    log $ "Length"
    log $ ""
    log $ show $ length Nil -- 0
    log $ show $ length (Cons 1 Nil) -- 1
    log $ show $ length (Cons 1 (Cons 2 Nil)) -- 2
    log $ "---------------------------"
module Snoc where

import Prelude

import Effect (Effect)
import Effect.Console (log)

import Data.List (List(..))

snoc:: forall a. List a -> a -> List a
snoc Nil x = Cons x Nil
snoc (Cons y ys) x = Cons y (snoc ys x)

test :: Effect Unit
test = do
  log $ "Snoc"
  log $ ""
  log $ show $ snoc Nil "test1" -- ("test1" : Nil)
  log $ show $ snoc (Cons "test2" Nil) "test2" -- ("test2" : "test2" : Nil)
  log $ show $ snoc (Cons "test3" (Cons "test3" Nil)) "test3" -- ("test3" : "test3" : "test3" : Nil)
  log $ "---------------------------"

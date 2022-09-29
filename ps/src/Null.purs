module Null where

import Prelude
import Effect (Effect)
import Effect.Console (log)

import Data.List (List(..))

null :: forall a. List a -> Boolean
null = case _ of
  Nil -> true
  _ -> false

test :: Effect Unit
test = do
  log $ "Null"
  log $ ""
  log $ show $ null (Cons "test1" Nil) -- false
  log $ show $ null (Nil) -- true
  log $ "---------------------------"
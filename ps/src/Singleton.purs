module Singleton where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Data.Maybe (Maybe(..))
import Data.List (List(..))

singleton :: forall x. x -> Array x
singleton a = [a]

test :: Effect Unit
test = do
    log $ "Singleton"
    log $ ""
    log $ show $ singleton 1 -- [1]
    log $ show $ singleton 2 -- [2]
    log $ show $ singleton "Test 3" -- ["Test 3"]
    log $ show $ singleton "Test 4" -- ["Test 4"]
    log $ "---------------------------"
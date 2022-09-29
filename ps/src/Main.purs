module Main where

import Prelude
import Effect (Effect)

import Snoc as Snoc
import Null as Null
import Singleton as Singleton
import Length as Length

main :: Effect Unit
main = do 
  Snoc.test
  Null.test
  Singleton.test
  Length.test
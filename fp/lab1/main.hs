module Main where

import Data.List

main = do

let a=["3","(345YU)","(TY)"]
let b=["G","H","(678)","8","9","0","7","6"]
let c=["(5T7YH)","U"]
let new_arr = (head a: (head b: (head c:[])))

print new_arr
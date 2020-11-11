module Fibonacci (binet) where

phi :: Floating n => n
phi = (1 + sqrt 5) / 2

binet :: Integer -> Integer
binet n = round (((phi ^ n) - ((1 - phi) ^ n)) / sqrt 5)

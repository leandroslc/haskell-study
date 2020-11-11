module Primes (
  isPrime,
  nextPrime
) where

nextPrime :: Integer -> Integer
nextPrime number
  | isPrime number = number
  | otherwise = nextPrime (number + 1)

isPrime :: Integer -> Bool
isPrime number
  | number <= 1 = False
  | number == 2 = True
  | any (\x -> number `mod` x == 0) (2 : [3, 5 .. y]) = False
  | otherwise = True
  where y = (ceiling . sqrt . fromIntegral) number

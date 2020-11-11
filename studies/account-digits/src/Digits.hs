module Digits (
  numberToDigits,
  digitsToNumber,
  fromLeastSignificantDigit,
  Digits
) where

type Digits = [Integer]

numberToDigits :: Integer -> Digits
numberToDigits 0 = []
numberToDigits number = numberToDigits (number `div` 10) ++ [number `mod` 10]

digitsToNumber :: Digits -> Integer
digitsToNumber = foldl1 (\x y -> 10 * x + y)

fromLeastSignificantDigit :: Digits -> Digits
fromLeastSignificantDigit = reverse

module Account (isValidAccount) where

import Elements (elementsAtEvenPosition, elementsAtOddPosition)
import Digits (numberToDigits, digitsToNumber, fromLeastSignificantDigit)
import Primes (nextPrime)
import Fibonacci (binet)

type AccountNumber = (Integer, Integer)

isValidAccount :: AccountNumber -> Bool
isValidAccount (number, digits)
  | number < 1 || number >= 10 ^ 6 = error "Invalid number"
  | digits < 0 || digits >= 10 ^ 3 = error "Invalid digits"
  | otherwise = calculateDigits number == digits

calculateDigits :: Integer -> Integer
calculateDigits number =
  let s = calculateS number
      x = calculateFirstDigit s
      y = calculateSecondDigit s
      z = calculateThirdDigit s

  in digitsToNumber [x, y, z]

calculateS :: Integer -> Integer
calculateS number = sum (
    [a * 2 | a <- digitsAtEvenPosition] ++ digitsAtOddPosition
  )
  where digits = numberToDigits number
        numberDigits = fromLeastSignificantDigit digits
        digitsAtEvenPosition = elementsAtEvenPosition numberDigits
        digitsAtOddPosition = elementsAtOddPosition numberDigits

calculateFirstDigit :: Integer -> Integer
calculateFirstDigit s = s `mod` 10

calculateSecondDigit :: Integer -> Integer
calculateSecondDigit s = ((p ^ 2) - p) `mod` 10
  where p = nextPrime s

calculateThirdDigit :: Integer -> Integer
calculateThirdDigit s = nthFibonacciNumber (s + 1) `mod` 10
  where nthFibonacciNumber n = binet n

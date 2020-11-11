module Elements (
  elementsAtEvenPosition,
  elementsAtOddPosition
) where

elementsAtEvenPosition :: [element] -> [element]
elementsAtEvenPosition (element : elements) = element : elementsAtOddPosition elements
elementsAtEvenPosition _ = []

elementsAtOddPosition :: [element] -> [element]
elementsAtOddPosition (_ : elements) = elementsAtEvenPosition elements
elementsAtOddPosition _ = []

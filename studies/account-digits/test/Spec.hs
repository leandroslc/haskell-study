
import Account (isValidAccount)
import Test.Hspec
import Control.Exception (evaluate)

main :: IO ()
main = hspec $ do
  describe "Account.isValidAccount" $ do
    it "throws when passing number less than 1" $ do
      evaluate (isValidAccount (0, 123)) `shouldThrow` anyException

    it "throws when passing number with more than 6 digits" $ do
      evaluate (isValidAccount (1234567, 123)) `shouldThrow` anyException

    it "throws when passing digits less than 0" $ do
      evaluate (isValidAccount (123456, -1)) `shouldThrow` anyException

    it "throws when passing digits with more than 3 digits" $ do
      evaluate (isValidAccount (123456, 1234)) `shouldThrow` anyException

    it "validates account numbers" $ do
      isValidAccount (138487, 523) `shouldBe` True
      isValidAccount (917233, 108) `shouldBe` False
      isValidAccount (602937, 363) `shouldBe` True
      isValidAccount (112113, 420) `shouldBe` True

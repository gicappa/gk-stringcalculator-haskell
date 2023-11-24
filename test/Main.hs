module Main (main) where

import Test.Hspec (hspec, describe, it, shouldBe)
import StringCalculator (add)

main :: IO ()
main = hspec $ do 
    describe "string calculator" $ do
        it "returns '0' for empty" $ do
            add "" `shouldBe` "0"
        it "returns the same number for one number input" $ do
            add "3" `shouldBe` "3"
        it "returns the sum of two numbers comma separated" $ do
            add "3,4" `shouldBe` "7"

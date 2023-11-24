module Main (main) where

import Test.Hspec (hspec, describe, it, shouldBe, xit)
import StringCalculator (add, splitOn)

main :: IO ()
main = hspec $ do 
    describe "string calculator" $ do
        it "returns '0' for empty" $ do
            add "" `shouldBe` "0"
        it "returns the same number for one number input" $ do
            add "3" `shouldBe` "3"
        xit "returns the sum of two numbers comma separated" $ do
            add "3,4" `shouldBe` "7"
    describe "splits a string using a delimiter" $ do
        it "returs a list with an empty string for empty input" $ do
            splitOn ',' "" `shouldBe` []
        it "splits the string in a list of strings" $ do
            splitOn ',' "1,3,45" `shouldBe` ["1", "3", "45"]


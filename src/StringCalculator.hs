module StringCalculator (add, splitOn) where

add :: String -> String
add str = if str == "" then "0" else str

replaceDel :: Char -> String -> String
replaceDel d = map (\c -> if c == d then ' ' else c) 

splitOn :: Char -> String -> [String]
splitOn d = words . replaceDel d
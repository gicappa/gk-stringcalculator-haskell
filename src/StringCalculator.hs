module StringCalculator (add) where

add :: String -> String
add str = if str == "" then "0" else str

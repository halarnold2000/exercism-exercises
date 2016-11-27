module LeapYear (isLeapYear) where

isLeapYear :: Integer -> Bool
isLeapYear yr
    | lp yr 4 && not (lp yr 100) = True
    | lp yr 400 = True
    | otherwise = False
    where lp yr val = yr `mod` val == 0

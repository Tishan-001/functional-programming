describeList :: [Int] -> String
describeList []       = "Empty list"
describeList [x]      = "One element: " ++ show x
describeList (x:y:[]) = "Two elements: " ++ show x ++ " and " ++ show y
describeList (x:xs)   = "Longer list, first element is " ++ show x

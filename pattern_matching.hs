describe :: [Int] -> String
describe []      = "Empty list"
describe (x:[])  = "One element: " ++ show x
describe (x:y:_) = "At least two elements"

-- Add a main function to test it
main :: IO ()
main = do
    putStrLn (describe [])
    putStrLn (describe [42])
    putStrLn (describe [1,2,3])

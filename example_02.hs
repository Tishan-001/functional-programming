-- Define a function that takes principal p, rate r, and years n
compoundInterest :: Double -> Double -> Int -> Double
compoundInterest p r n = p * (1 + r) ^ n -- Formula: P * (1 + r) ^ n

main :: IO ()
main = do
    putStrLn "Enter principal amount (p):"
    pInput <- getLine
    let p = read pInput :: Double -- convert input string to Double

    putStrLn "Enter anual interest rate (r) as decimal (e.g. 0.05 for 5%):"
    rInput <- getLine
    let r = read rInput :: Double -- convert input string to Double

    putStrLn "Enter number of years (n):"
    nInput <- getLine
    let n = read nInput :: Int -- convert input string to Int

    -- Calculate total amount 
    let total = compoundInterest p r n 
    putStrLn $ "Total amount after " ++ show n ++ " years: " ++ show total
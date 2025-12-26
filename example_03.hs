-- Function to solve ax^2 + bx + c = 0
-- It returns a tuple with the two roots
quadraticRoots :: Double -> Double -> Double -> (Double, Double)
quadraticRoots a b c =
    let discriminant = b^2 - 4*a*c
        sqrtDisc     = sqrt discriminant
        root1       = (-b + sqrtDisc) / (2*a)
        root2       = (-b - sqrtDisc) / (2*a)
    in (root1, root2)

-- Main program to test the function
main :: IO ()
main = do
    putStrLn "Enter coefficient a:"
    aInput <- getLine
    let a = read aInput :: Double

    putStrLn "Enter coefficient b:"
    bInput <- getLine
    let b = read bInput :: Double

    putStrLn "Enter coefficient c:"
    cInput <- getLine
    let c = read cInput :: Double

    let (r1, r2) = quadraticRoots a b c
    putStrLn $ "The roots are: " ++ show (r1, r2)

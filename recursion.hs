fac 0 = 1
fac n = n * fac (n-1)

myProduct :: Num a => [a] -> a
myProduct []     = 1
myProduct (n:ns) = n * myProduct ns

myGcd :: Int -> Int -> Int
myGcd a 0 = a
myGcd a b = myGcd b (a `mod` b)

quicksort :: Ord a => [a] -> [a]
quicksort []     = []
quicksort (p:xs) =
    let smaller = [x | x <- xs, x <= p]
        larger  = [x | x <- xs, x > p]
    in quicksort smaller ++ [p] ++ quicksort larger
myMap f []     = []
myMap f (x:xs) = f x : myMap f xs

myFilter p [] = []
myFilter p (x:xs)
    | p x       = x : myFilter p xs
    | otherwise = myFilter p xs
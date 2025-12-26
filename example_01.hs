-- Define a function called sumAndSqures that performs IO actions (printing results)
sumAndSqures :: IO ()
sumAndSqures = do
    -- Generate a list of numbers from 1 to 100
    let numbers = [1..100]
    putStrLn $ "Numbers from 1 to 100: " ++ show numbers

    -- Filter numbers divisible by 3 or 5 using a list comprehension
    let divisible = [x | x <- numbers, x `mod` 3 == 0 || x `mod` 5 == 0]
    putStrLn $ "Numbers divisible by 3 or 5: " ++ show divisible

    -- Compute the sum of those divisible numbers
    let total = sum divisible
    putStrLn $ "Sum of divisible numbers: " ++ show total

    -- Compute the sum of squares of those divisible numbers
    -- map takes a function and a list, then applies that function to every element of the list, producing a new list.
    let totalSqures = sum (map (^2) divisible)
    putStrLn $ "Sum of squares of divisible numbers: " ++ show totalSqures

    -- Print the final result as a tuple (sum, sum of squares)
    putStrLn $ "Final Result as Tuple: (" ++ show total ++ ", " ++ show totalSqures ++ ")"

-- Entry point of the program: when run, it calls sumAndSqures
main :: IO ()
main = sumAndSqures

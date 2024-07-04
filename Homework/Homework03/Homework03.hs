-- Question 1
-- Write a function that checks if the monthly consumption of an electrical device is bigger, equal, or smaller than the maximum allowed and
-- returns a message accordingly. 
-- The function has to take the hourly consumption of an electrical device, the hours of daily use, and the maximum monthly consumption allowed.
-- (Monthly usage = consumption (kW) * hours of daily use (h) * 30 days).

checkConsumption hourlyConsumption hoursOfDailyUse maxConsumption 
    | monthlyConsumption > maxConsumption = "Your monthly consumption is too darn high!"
    | monthlyConsumption == maxConsumption = "Take it easy."
    | maxConsumption > monthlyConsumption = "This is fine."
    where
        monthlyConsumption = hourlyConsumption * hoursOfDailyUse * 30 

-- Question 2
-- Prelude:
-- We use the function `show :: a -> String` to transform any type into a String.
-- So `show 3` will produce `"3"` and `show (3 > 2)` will produce `"True"`.

-- In the previous function, return the excess/savings of consumption as part of the message.

checkConsumption hourlyConsumption hoursOfDailyUse maxConsumption 
    | monthlyConsumption > maxConsumption = "Your monthly excess is " ++ show (monthlyConsumption - maxConsumption) ++ "kWh."
    | monthlyConsumption == maxConsumption = "Take it easy."
    | maxConsumption > monthlyConsumption = "Your monthly saving is " ++ show (maxConsumption - monthlyConsumption) ++ "kWh."
    where
        monthlyConsumption = hourlyConsumption * hoursOfDailyUse * 30 

-- Question 3
-- Write a function that showcases the advantages of using let expressions to split a big expression into smaller ones.
-- Then, share it with other students in Canvas.


-- Question 4
-- Write a function that takes in two numbers and returns their quotient such that it is not greater than 1.
-- Return the number as a string, and in case the divisor is 0, return a message why the division is not
-- possible. To implement this function using both guards and if-then-else statements.  

question4 x y 
    | y /= 0    = show (x / y)
    | otherwise = "Can't divide by zero."

question4alt x y =
    if y /= 0
        then let
            quotient = x / y
        in show quotient
    else "Can't divide by zero."


-- Question 5
-- Write a function that takes in two numbers and calculates the sum of square roots for the product and quotient
-- of those numbers. Write the function such that you use a where block inside a let expression and a
-- let expression inside a where block. 


question5 x y
    | y /= 0    = show (sqrt product + sqrt quotient)
    | otherwise = "Can't divide by zero." where
        product  = x * y
        quotient = x / y

question5alt x y = 
    if y /= 0 
        then let 
            product  = x * y
            quotient = x / y
        in show (sqrt product + sqrt quotient)
    else "Can't divide by zero."
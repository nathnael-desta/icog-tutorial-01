 ; Define a function to check if a number is a multiple of 3
(= (MultipleOf3 $x) (== 0 (% $x  3)))

 ; Define a function to check if a number is a multiple of 5
(= (MultipleOf5 $x) (== 0 (% $x  5)))

 ; Define a function to check if a number is a multiple of either 3 or 5
(= (MultipleOf3Or5 $x) (or (MultipleOf3 $x) (MultipleOf5 $x)))

 ; Recursive function to sum all multiples of 3 or 5 below a given number
(= (recursivleyAddMultiplesOf3or5 $x)
    (if
        (> $x 0) ; Base case: Stop recursion when x <= 0
        (if (MultipleOf3Or5 $x) ; Check if x is a multiple of 3 or 5
            (+ $x (recursivleyAddMultiplesOf3or5 (- $x 1))) ; Add x and recurse for x-1
            (+ 0 (recursivleyAddMultiplesOf3or5 (- $x 1))) ; Skip x and recurse for x-1
        )
    0 ;Return 0 when x reaches 0 (base case)
)
)

 ; calls the recursive function starting from (N-1)
(= (sumOfMultiplesOf3Or5BellowNumber $x) (recursivleyAddMultiplesOf3or5 (- $x 1)))

 ; Calculate the sum of multiples of 3 or 5 below 10
! (sumOfMultiplesOf3Or5BellowNumber 10)
 ; outputs [23]

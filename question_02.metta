 ; Check if a number is even
( = (isEven $y) ( == 0 (% $y 2)))

 ; Recursively sum even Fibonacci numbers within a limit number
( = (FibonacciWithinLimitNumber $x $y $l)
    (
        if (<= $y $l) ; Continue if $y is within the limit
        (
            if (isEven $y) ; Add $y if it's even, otherwise add 0
            (+ $y (FibonacciWithinLimitNumber $y (+ $x $y) $l))
            (+ 0 (FibonacciWithinLimitNumber $y (+ $x $y) $l))
        )
    0 ; Stop recursion if $y exceeds the limit
)
)

 ; Start Fibonacci sum with initial values 1, 2 and a given limit
( = (startFibonacciWithLimit $l) (FibonacciWithinLimitNumber 1 2 $l))

 ; Calculate the sum of even Fibonacci numbers below 100
! (startFibonacciWithLimit 100)
 ; outputs [44]
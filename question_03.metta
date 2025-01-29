
 ; I implemented bubble sort as the sorting algorithm

 ; Define the length function
 ; Base case: the length of an empty list is 0
(= (length ()) 0)

 ; Add 1 for the current element and compute length of the rest
(= (length (:: $x $xs))
    (+ 1 (length $xs))
)

 ; Perform one pass of bubble sort (bubblePass)
 ; Base case: if only one element remains, return it as it is
(= (bubblePass $i $n (:: $y ()))
    (:: $y ())
)

 ; compare adjacent elements and swap if necessary
(= (bubblePass $i $n (:: $x (:: $y $ys)))
    (
        if (== $i (- $n 1))
        (:: $x (:: $y $ys))
        (
            if (> $x $y)
            (:: $y (bubblePass (+ $i 1) $n (:: $x $ys)))
            (:: $x (bubblePass (+ $i 1) $n (:: $y $ys)))
        )
)
)

 ; Start the full bubble sort process
 ; Iterate $n times, where $n is the length of the list
(= (startBubbleSort $n (:: $x (:: $y $ys)))
    (
        if (>= $n 1)
        (startBubbleSort (- $n 1) (bubblePass 0 $n (:: $x (:: $y $ys))))
        (:: $x (:: $y $ys))
    )
)

 ; Calls startBubbleSort with the length of the list
(= (bubbleSort (:: $x (:: $y $ys)))
    (startBubbleSort (length (:: $x (:: $y $ys))) (:: $x (:: $y $ys)))
)

! (bubbleSort (:: 2 (:: 1 (:: 3 (:: 6 (:: 1 (:: 9 (:: 3 (:: 0 ())))))))))
 ; gives us [(:: 0 (:: 1 (:: 1 (:: 2 (:: 3 (:: 3 (:: 6 (:: 9 ()))))))))]

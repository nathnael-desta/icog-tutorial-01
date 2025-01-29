 ; Define a binary function addTwo that takes two arguments and returns their sum
(= (addTwo $x $y) (+ $x $y))

 ; Define a binary function multiplyTwo that takes two arguments and returns their product
(= (multiplyTwo $x $y) (* $x $y))

 ; Base case for the map function: if the input list is empty, return an empty list
(= (map $f $c ()) ())

 ; Recursivly call the function $f on each of the items
(= (map $f $c (:: $x $xs))
    (:: ($f $c $x) (map $f $c $xs))
)

 ; Test the map function using addTwo with a constant value of 10 and a list (1, 2, 3)
! (map addTwo 10 (:: 1 (:: 2 (:: 3 ())))) ; outputs [(:: 11 (:: 12 (:: 13 ())))]

 ; Test the map function using multiplyTwo with a constant value of 20 and a list (1, 2, 3)
! (map multiplyTwo 20 (:: 1 (:: 2 (:: 3 ()))))
 ; outputs [(:: 20 (:: 40 (:: 60 ())))]

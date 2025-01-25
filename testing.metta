
; (=(divisibleBy3)(== 0 (% 3  3))) 
; !(divisibleBy3)

; (=(divisibleBy3 $x)(== 0 (% $x  3))) 
; !(divisibleBy3 5)

; (=(MultipleOf3Or5 $x)(or (== 0 (% $x  3)) (== 0 (% $x  5)))) 
; !(MultipleOf3Or5 10)


 try to list all numbers below a number
 ;(=(listNums $x) 
 ;(
 ;   if (> $x 1)
 ;       ((- $x 1) (listNums (- $x 1)))
 ;   0
 ;)
;)

; [(4 (3 (2 (1 0))))]


; print without the brackets

 (=(listNums $x) 
 (
    if (> $x 1)
        (42 55)
    0
 )
)

!(listNums 5)


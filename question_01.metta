(=(MultipleOf3 $x)(== 0 (% $x  3))) 

(=(MultipleOf5 $x)(== 0 (% $x  5))) 

(=(MultipleOf3Or5 $x)(or (MultipleOf3 $x) (MultipleOf5 $x))) 

(= (recursivleyAddMultiplesOf3or5 $x)
    (if 
        (> $x 0)
            (if (MultipleOf3Or5 $x)
                (+ $x (recursivleyAddMultiplesOf3or5 (- $x 1)))
                (+ 0 (recursivleyAddMultiplesOf3or5 (- $x 1)))
            )
       0
    )
)

(= (sumOfMultiplesOf3Or5BellowNumber $x) (recursivleyAddMultiplesOf3or5 (- $x 1)))

! (sumOfMultiplesOf3Or5BellowNumber 10)

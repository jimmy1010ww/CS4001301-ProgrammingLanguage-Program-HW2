;Made by B10915003
;function name: dbl_atm
	;input: an atom and a list
	;output: a l

;car => return the first element of the list
;cdr => return the rest of the list
;cons => return a new list with the first element and the rest of the list


(define (dbl_atm a l)
    ;if the list is not empty
    (cond ((not (null? l))
        ;if the list is the list
        (cond ((list? l)
            ;if the first element of the list is the list
            (cond ((list? (car l))
                (list (append (dbl_atm a (car l)) (dbl_atm a (cdr l)))))
            ;if the first element of the list is the atom
            (else
                (append (dbl_atm a (car l)) (dbl_atm a (cdr l))))))
        ;if the list is not the list
        (else
            ;if the list is the atom 
            (cond ((eq? a l)
                (append (list a) (list a)))
            ;if the list is not the atom
            (else (list l))))
        ))
    ;if the list is empty
    (else '())
    )
)

(print (dbl_atm 'x '(x (y z (x y)))))
(print (dbl_atm 'y '(x (y z (x y)))))



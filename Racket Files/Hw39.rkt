;Jeffrey Weng
;mcjeffrey168@gmail.com
;Hw #39

; symbols for symbols
(define fname 'marvin)
(define lname 'gaye) 

; symbols for lists
(define m0 '(a b))
(define m1 '(0 1 2))
(define sub '(n (e  s) t))

; one atom, 12
(define atom 12)  ; not a list

;0. State Definitions
;list = the list procedure creates creates a set of elements that are evaluated
;append = the combination of two lists, creating a single list

;1. Explain how literals build lists
; (display '(fname lname)) (newline)
; There's two elements in the resulting list
; In the REPL pane it'll look like (fname lname)

(display '(fname lname)) (newline)
(display "..should be (fname lname)") (newline)
(display "-----------------") (newline) (newline)

;2
;(display (list fname lname))(newline)
;There's two elements in the resulting list
;In the REPL pane it'll look like (marvin gaye)

(display (list fname lname)) (newline)
(display "...should be (marvin gaye)") (newline)
(display "-----------------") (newline) (newline)

;3
;(display (list m0 m1)) (newline)
;There's two elements in the resulting list
;In the REPL pane it'll look like ((a b) (0 1 2))

(display (list m0 m1)) (newline)
(display "...should be ((a b) (0 1 2))") (newline)
(display "-----------------") (newline) (newline)

;4
;(display (append m0 m1)) (newline)
;There's 5 elements in the resulting list
;In the REPL pane it'll look like ((a b 0 1 2))

(display (append m0 m1)) (newline)
(display "...should be (a b 0 1 2)") (newline)
(display "-----------------") (newline) (newline)

;5
;(display (append m0 sub)) (newline)
;There's five elements in the resulting list
;In the REPL pane it'll look like (a b n (e s) t)

(display (append m0 sub)) (newline)
(display "...should be (a b n (e s) t)") (newline)
(display "-----------------") (newline) (newline)

;7
;(display "work with null lists") (newline)
;(display (list )) (newline)
;A null list

(display "work with null lists") (newline)
(display  (list )       )(newline)
(display "-----------------") (newline) (newline)

;8
;(display  '()           )(newline)
;displays a null list

(display  '()           )(newline)
(display "-----------------") (newline) (newline)

;9
;(display  (list '())    )(newline)
; A null list in a list

(display  (list '())    )(newline)
(display "-----------------") (newline) (newline)

;10
;(display  (list   '() m0)   )(newline)
; two elements, (() (a b))

(display  (list   '() m0)   )(newline)
(display "-----------------") (newline) (newline)

;11
;(display  (append '() m0)   )(newline)
; one element, (a b)

(display  (append '() m0)   )(newline)
(display "-----------------") (newline) (newline)

;12
;(display  (list   '() '())  )(newline)
; a list with two empty lists, two elements

(display  (list   '() '())  )(newline)
(display "-----------------") (newline) (newline)

;13
;(display  (append '() '())  )(newline)
; a list, null list

(display  (append '() '())  )(newline)
(display "-----------------") (newline) (newline)

;14
(display (append (list atom) m0)) (newline)
;15
(display (append m0 (list atom))) (newline)

;16 acceptListParem
(define acceptListParam (lambda (thing)
                          (car thing)
                          ))
(display (acceptListParam '(first second third)) )
(display " ...should be first") (newline)
(display "-----------------") (newline) (newline)

;17 rev3

(define rev3 (lambda (list1)
               (append (cdr(cdr list1)) (list(car(cdr list1))) (list(car list1)))))
           
(rev3 '(backward ran sentences))
(display "...should be (sentences ran backward)") (newline)









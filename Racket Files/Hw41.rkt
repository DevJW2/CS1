;Jeffrey Weng
;mcjeffrey168@gmail.com

;1 Access each element

(define Neil '(one small step for man))
(display (car Neil)) (newline)
(display (cadr Neil)) (newline)
(display (caddr Neil)) (newline)
(display (cadddr Neil)) (newline)
(display (car(cddddr Neil))) (newline)

;2 help

(define helped (append (list(car Neil)) (list(cadr Neil))
                       (list(caddr Neil)) (list(cadddr Neil)) '(a) (cddddr Neil)))

(display helped ) (newline)
(display " ...should be(one small step for a man)") (newline)

;3 have car return a list
(define L '((5) 6 7)) 

(display (car L)) (newline)
(display " ...should be (a list)") (newline)
(display "-----------------") (newline) (newline)

;4 Composed procedure, Jeopardy-style
(define L '(5 6 7))
(display (car L)) (newline)
(display "should be 5") (newline)
(display (cdr L)) (newline)
(display "should be (6 7)") (newline)
(display (car(cdr L))) (newline)
(display "should be 6") (newline)
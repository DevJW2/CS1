(define L '(a (b) c))
(display (car(cdr L)))
(display "..should be (b)")(newline)(newline)
(display (car(car(cdr L))))
(display "..should be b")(newline)(newline)

(define L1 '(init later muchLater stillLater final))
(display (car(cdr (cdr (cdr (cdr L1))))))
(display "..should be final") (newline)(newline)

(define L2 '(((2)) ((cd) (d c a) (z x))))
(display (car (car (car L2))))
(display "..should be 2") (newline)(newline)

(display (car(cdr(car (cdr (car (cdr L2)))))))
(display "..should be c") (newline)(newline)

(display (car(car (car (cdr L2)))))
(display "..should be cd")(newline)(newline)

(define L3 '(() () (((aa) (ab) (a))) abc))
(display (car (car (car (cdr (cdr L3))))))
(display "..should be (aa)")(newline)(newline)

(display (car(car(cdr(car(car(cdr(cdr L3))))))))
(display "..should be ab") (newline)(newline)

(display (car(cdr(cdr(car(car(cdr(cdr L3))))))))
(display "..should be (a)") (newline)(newline)

(display (car(cdr(cdr(cdr L3)))))
(display "..should be abc") (newline)(newline)




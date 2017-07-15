; Hw 27
; Jeffrey Weng mcjeffrey168@gmail.com

(display "2. Pictures to Code") (newline)
(define a (lambda (testvalue)
            (or (and (> testvalue -1) (<= testvalue 3))
                (and (>= testvalue 4) (< testvalue 6)))
            ))

(define b (lambda (testvalue)
            (and (> testvalue 2) (< testvalue 3.7)
                 (> testvalue 3.7) (<= testvalue 5))
            ))

(define c (lambda (testvalue)
            (and (or (<= testvalue 4) (> testvalue 7)) (= testvalue 5.6))
            ))

(define d (lambda (testvalue)
            (not (integer? testvalue))
            ))

;Tests

(display (a 0)) (newline)
(display " ...should be #t") (newline)
(display "-----------------") (newline) (newline)

(display (a -1)) (newline)
(display " ...should be #f") (newline)
(display "-----------------") (newline) (newline)

(display (a 3)) (newline)
(display " ...should be #t") (newline)
(display "-----------------") (newline) (newline)

(display (a 4)) (newline)
(display " ...should be #t") (newline)
(display "-----------------") (newline) (newline)

(display (a 6)) (newline)
(display " ...should be #f") (newline)
(display "-----------------") (newline) (newline)

(display (b 0)) (newline)
(display " ...should be #f") (newline)
(display "-----------------") (newline) (newline)

(display (b 2)) (newline)
(display " ...should be #f") (newline)
(display "-----------------") (newline) (newline)

(display (b 3.7)) (newline)
(display " ...should be #f") (newline)
(display "-----------------") (newline) (newline)

(display (b 5)) (newline)
(display " ...should be #f") (newline)
(display "-----------------") (newline) (newline)

(display (c 0)) (newline)
(display " ...should be #f") (newline)
(display "-----------------") (newline) (newline)

(display (c 4)) (newline)
(display " ...should be #f") (newline)
(display "-----------------") (newline) (newline)

(display (c 5.6)) (newline)
(display " ...should be #f") (newline)
(display "-----------------") (newline) (newline)

(display (c 7)) (newline)
(display " ...should be #f") (newline)
(display "-----------------") (newline) (newline)

(display (d 0)) (newline)
(display " ...should be #f") (newline)
(display "-----------------") (newline) (newline)

(display (d 1.5)) (newline)
(display " ...should be #t") (newline)
(display "-----------------") (newline) (newline)
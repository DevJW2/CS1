(define M '(a (b c) d ((e f) g h) i))

(display "#1 3 calls") (newline) (newline)


;The cdr function produces a list that is a copy of the
;its list argument without that list's first element. 
;Therefore calling
;       (cdr M) which is (cdr '(a (b c) d ((e f) g h) i))
;produces a list that is: '((b c) d ((e f) g h) i)
;
;The next call, the car function produces an element that is 
;a copy of the first element
;       (car '((b c) d ((e f) g h) i))
;produces an element that is a list that is: '(b c)
;
;The next call, the car function produces an element that is 
;a copy of the first element 
;       (car '(b c))
;produces an element that is: b

(display (car (car (cdr M)))) (newline)
(display ".......should produce b") (newline)

(display "#2 5 calls") (newline) (newline)

;The cdr function produces a list that is a copy of the
;its list argument without that list's first element.
;Therefore calling
;        (cdr M) which is: (cdr '(a (b c) d ((e f) g h) i))
;produces a list that is: '((b c) d ((e f) g h) i)
;
;The next call, the cdr function again, does the same thing
;Therefore calling
;         (cdr '((b c) d ((e f) g h) i))
;producing a list that is: '(d ((e f) g h) i)
;
;The next call, the cdr function again, does the same thing
;Therefore calling
;         (cdr '(d ((e f) g h) i))
;producing a list that is: '(((e f) g h) i)
;
;The next call, the car function produces an element that is 
;a copy of the first element
;         (car '(((e f) g h) i))
;producing an element that is a list that is: '((e f) g h)
;
;The next call, the car function produces an element that is
;a copy of the first element
;         (car '((e f) g h))
;producing an element that is a list that is: '(e f)

(display (car (car (cdr (cdr (cdr M)))))) (newline)
(display "........should produce (e f)")


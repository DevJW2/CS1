; Hw28
; Jeffrey Weng, mcjeffrey168@gmail.com
; Worked with ZhenHong 

;1. Improve autotip
(define autotip (lambda (party food)
                  (* food (if (> party 8) 1.18 1))
                  ))
;2. Absolute value
(define my_abs (lambda(absolute_number)
                 (if (positive? absolute_number) absolute_number
                     (- absolute_number))))

;3. max2
(define max2 (lambda(num1 num2) (or (if (> num1 num2) num1 num2)
                                    (if (= num1 num2) num1))))

;4 two-part invention
(define two (lambda(chooser)
              (if (<= chooser 3) 12 (* 4 chooser))))

; tests
(display (autotip 10 2)) (newline)
(display "should be 2.36")(newline)
(display "=================") (newline)

(display (autotip 2 2)) (newline)
(display "should be 2")(newline)
(display "=================") (newline)

(display (my_abs -5)) (newline)
(display "should be 5") (newline)
(display "=================") (newline)

(display (my_abs 6)) (newline)
(display "should be 6") (newline)
(display "=================") (newline)

(display (my_abs 0)) (newline)
(display "should be 0") (newline)
(display "=================") (newline)

(display (max2 5 6)) (newline)
(display "should be 6") (newline)
(display "=================") (newline)

(display (max2 6 5)) (newline)
(display "should be 6") (newline)
(display "=================") (newline)

(display (max2 7 7)) (newline)
(display "should be 7") (newline)
(display "=================") (newline)

(display (two 5)) (newline)
(display "should be 20") (newline)
(display "=================") (newline)

(display (two 0)) (newline)
(display "should be 12") (newline)
(display "=================") (newline)

(display (two 3)) (newline)
(display "should be 12") (newline)
(display "=================") (newline)


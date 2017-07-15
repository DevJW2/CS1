;Jeffrey Weng
;mcjeffrey168@gmail.com

;1. Concatenate strings

(define who? "man")
(define steps "1")
(define small (string-append "That's " steps " small" " step" " for" " a " who?))
(define giant (string-append steps " giant" " leap" " for " who? "kind"))

(define (combo string1 string2) (string-append string1 "; " string2))

(display (combo small giant))(newline)
(display "...should be That's 1 small step for a man; 1 giant leap for mankind.")
(newline)

;assemble the moves for solving Towers of Hanoi

;(display(tower monk)) (newline)
;(display "....should be Whatever Monk Number is, and the correlated Moves")
;(newline)


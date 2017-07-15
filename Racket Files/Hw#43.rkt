;Jeffrey Weng
;mcjeffrey168@gmail.com
;Hw# 43

;1. shorthand for creating procedures

;1 rev3
(define (rev3 list1)
  (list (cdr(cdr list1)) (list(car(cdr list1))) (list(car list1))))

(rev3 '(backward ran sentences))
(display "...should be (sentences ran backward)") (newline)

;1 rev3_theOtherWay
(define (rev3 list1)
  (append (list(caddr list1)) (list(cadr list1)) (list(car list1))))

(display(rev3 '(backward ran sentences))) (newline)
(display "...should be (sentences ran backward)") (newline)
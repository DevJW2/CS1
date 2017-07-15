;Jeffrey Weng
;mcjeffrey168@gmail.com
;Hw 40

;0 finish hw 39
;17 Palindrome3
(define palindrome3 (lambda (L)
                      (append L (list(caddr L)) (list(cadr L)) (list(car L))
                      )))

(display (palindrome3 '(will my love)))(newline)
(display "...should be (will my love love my will)") (newline)


;1 rev3_theOtherWay
(define rev3 (lambda (list1)
               (append (list(caddr list1)) (list(cadr list1)) (list(car list1)))))
           
(display(rev3 '(backward ran sentences))) (newline)
(display "...should be (sentences ran backward)") (newline)
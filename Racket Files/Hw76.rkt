;  hw76
;   Jeffrey Weng mcjeffrey168@gmail.com period 3


(define activity
  (lambda (weekday?      ; Boolean value of "the day is a weekday"
           eight-four?)  ; Boolean value of "the time is between 8am - 4pm
    
    (cond
      ((and (equal? weekday? #t) (equal? eight-four? #t)) "school" )
      ((and (equal? weekday? #t) (equal? eight-four? #f)) "Facebook")
      ((and (equal? weekday? #f) (equal? eight-four? #t)) "sleep" )
      (else "Youtube")
      )
    
    )) ; end of lambda and define
; tests
(display (activity #t #t))
(display " ...should be school") (newline)

(display (activity #t #f))
(display " ...should be Facebook") (newline)

(display (activity #f #t))
(display " ...should be sleep") (newline)

(display (activity #f #f))
(display " ...should be YouTube") (newline)

(display "-----------------") (newline) (newline)


;Definitely the netlogo simulations, are more harder
;since i have very little experience with them. Therefore
;my time will be dedicated to the netlogo area more.
;On the other hand, i will not be doing this,
;ill be using the whole of next week (regents week), and especially
;sunday to go over the homeworks and the test entirely.
;I plan to spend around 8 hours on studying for this,
;maybe less, if i have good understanding of the topics
;before hand. 











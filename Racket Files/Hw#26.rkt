; Hw # 26
; Jeffrey Weng mcjeffrey168@gmail.com

;1 Predict
;Predictions
; #t
; #f
; #t
; #f
; #t

(display (and (<= 3 4)(>= 4 3)))(newline)
(display (and (<= 3 4)(>= 4 3)(> 3 4) ))(newline)
(display (or (<= 3 4)(>= 4 3)(> 3 4) ))(newline)

(define p (and (<= 3 4)(>= 4 3)))
(display (not p))(newline)
(display (not (not p)))(newline)

;2 Which answer when?
;Predictions
;Any Multiple of 12 
(define MrsWhich
  (lambda (p)
    (= 0 (modulo p 12))
    )) ; end of lambda and define

;3 Which answer when again?
; Predictions
; Any odd number
(define DrWho
  (lambda (q)
    (not (= 0 (modulo q 2)))
    )) ; end of lambda and define



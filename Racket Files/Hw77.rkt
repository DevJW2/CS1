(define whatever (lambda (L)
                   (if (null? L)
                       '()
                       (append
                        (list(car L))
                        (whatever (cdr L))
                        )
                       )

                   ))

(whatever '(1 2 3))




(define RLZ (lambda (L)
              (if (or (null? L) (not(equal? (car L) 0)))
                  L
                  (RLZ (cdr L))
                  )

              ))



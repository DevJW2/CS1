(define sumOfList (lambda (L sumSoFar)
                    (if (not(null? L))
                        (sumOfList
                         (cdr L)
                         (+ (car L)
                            sumSoFar
                            )
                         )
                        sumSoFar
                        )
                    ))

(sumOfList '(5 4 3 2 1) 0)

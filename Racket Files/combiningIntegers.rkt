(define combiningStrings (lambda (L)
                           (if (not (null? L))
                               (string-append
                                (number->string (car L))
                                (combiningStrings (cdr L))
                                )
                               ""
                               )
                           
                           ))

(combiningStrings '(1 2 3 4 5 6 7 8))
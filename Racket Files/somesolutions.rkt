(define morphingRange (lambda (startingValue sequenceLength)
                        (if (> sequenceLength 0)
                           
                            (append
                             (list startingValue)
                             (morphingRange (+ 1 startingValue) (- sequenceLength 1))
                             )
                            '()
                             )
                            
                         
                         )

                        )

(morphingRange 3 5)

(define L '((Thank you) Mario but (our princess) is (in (another castle))))
(car(cdr(cdr L)))
(car(car(cdr(cdr(cdr(cdr(cdr L)))))))


(define laundry (lambda (n)
                  (cond
                    ((< n 8) 8)
                    ((and (> n 8) (<= n 30)) (+ 8 (* 0.5 (- n 8))))
                    ((> n 30) (+ 8 (* 22 0.5) (* 0.10 (- n 30))))
                    


                   )

                  ))

(laundry 9)
(laundry 30)
(laundry 34)


(define RLZ (lambda (L)
              (if (not (null? L))
                  (if (= (car L) 0)
                      (RLZ (cdr L))
                      L
                      )
                  '()

                  )

              ))

(RLZ '(0 0 2 3 0 1))
(RLZ '(0 0 0 ))
(RLZ '(1 2 0 0 0))


(define L '(the (key to) immortality (is (first (living)) a life worth remembering)))
(car(car(cdr L)))

(car(car(cdr(car(cdr(car(cdr(cdr(cdr L)))))))))


(define postage (lambda (weight)
                  (cond
                    ((<= weight 3) 5)
                    ((and (> weight 3)(<= weight 10)) (+ 5 (* 1 (- weight 3))))
                    ((> weight 10) (+ 12 (* .5 (- weight 10))))


                    )

                  ))

(postage 2)
(postage 4)
(postage 10)
(postage 13)

(define buildlist (lambda (a b)
                    (if (= b 0)
                        '()
                        (append (list a)
                                (buildlist a (- b 1))
                                )
                        )
                    
                    

                    ))
(buildlist 'x 5)
(buildlist 2 4)
(buildlist 'z 0)

(define spreadlist (lambda (L1 L2)
                     (if (not (null? L1))
                         (cons
                          (buildlist (car L1) (car L2))
                          (spreadlist (cdr L1) (cdr L2))
                          )
                         '()
                         )


                     ))
(spreadlist '(a b c)'(5 2 4))


(define sumofeveryother (lambda (L)
                          (if (not(null? (cdr L)))
                              (+
                               (car L)
                               (sumofeveryother (cdr(cdr L)))

                               )
                              (car L)
                              )


                          ))
(sumofeveryother '(1 2 3 4 5))
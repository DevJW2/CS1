; Hw 30
; Jeffrey Weng, mcjeffrey168@gmail.com

;1. three-part invention
(define three(lambda (w)
               (if (negative? w) -1
                   (if (and (>= w 0) (<= w 4)) 3.5 7)
                   )
               ))

;2 taxes
(define bracket(lambda (taxableIncome)
                 (if (and (>= taxableIncome 0) (<= taxableIncome 9075)) 0.10
                     (if (and (>= taxableIncome 9076) (<= taxableIncome 36900)) 0.15
                         (if (and (>= taxableIncome 36901) (<= taxableIncome 89350)) 0.25
                             (if (and (>= taxableIncome 89351) (<= taxableIncome 186350)) 0.28
                                 (if (and (>= taxableIncome 186351) (<= taxableIncome 405100)) 0.33
                                     (if (and (>= taxableIncome 405101) (<= taxableIncome 406750)) 0.35
                                         0.396)))))))
  ) ; end of lambda and define

; The 2015 taxable income brackets and rates, the values are not incremented when placed into a new rate
; Therefore its not clear if 9225 is in the 10% rate or the 15% rate. 

; max3
(define max3 (lambda (num1 num2 num3)
               (if (and (> num1 num2) (> num1 num3)) num1
                   (if (and (> num2 num1) (> num2 num3)) num2
                       (if (and (> num3 num1) (> num3 num2)) num3
                           (if (= num1 num2 num3) num1
                               (if (and (= num1 num2) (> num1 num3)) num1
                                   (if (and (= num1 num3) (> num1 num2)) num1
                                       (if (and (= num2 num3) (> num2 num1)) num2 num3)
                                       )))))))
  ) ; end of lambda and define

;tests
(display "1. Three-part invention") (newline)
(display "Result:  ")
(display (three -1)) (newline)
(display ".....should be -1") (newline)
(display "============================") (newline)
(display "Result:  ")
(display (three 0)) (newline)
(display ".....should be 3.5") (newline)
(display "============================") (newline)
(display "Result:  ")
(display (three 4)) (newline)
(display ".....should be 3.5") (newline)
(display "============================") (newline)
(display "Result:  ")
(display (three 5)) (newline)
(display ".....should be 7") (newline)
(display "============================") (newline)
(display "2. taxes") (newline)
(display "Result ") 
(display (bracket 0)) (newline)
(display ".....should be 0.1") (newline)
(display "============================") (newline)
(display "Result ") 
(display (bracket 9076)) (newline)
(display ".....should be 0.15") (newline)
(display "============================") (newline)
(display "Result ") 
(display (bracket 36901)) (newline)
(display ".....should be 0.25") (newline)
(display "============================") (newline)
(display "Result ") 
(display (bracket 89351)) (newline)
(display ".....should be 0.28") (newline)
(display "============================") (newline)
(display "Result ") 
(display (bracket 186351)) (newline)
(display ".....should be 0.33") (newline)
(display "============================") (newline)
(display "Result ") 
(display (bracket 405101)) (newline)
(display ".....should be 0.35") (newline)
(display "============================") (newline)
(display "Result ") 
(display (bracket 406751)) (newline)
(display ".....should be 0.396") (newline)
(display "============================") (newline)
(display "3. max3") (newline)
(display "Result ") 
(display (max3 1 2 3)) (newline)
(display ".....should be 3") (newline)
(display "============================") (newline)
(display "Result ") 
(display (max3 1 3 2)) (newline)
(display ".....should be 3") (newline)
(display "============================") (newline)
(display "Result ") 
(display (max3 3 2 1)) (newline)
(display ".....should be 3") (newline)
(display "============================") (newline)
(display "Result ") 
(display (max3 1 3 3)) (newline)
(display ".....should be 3") (newline)
(display "============================") (newline)
(display "Result ") 
(display (max3 3 2 3)) (newline)
(display ".....should be 3") (newline)
(display "============================") (newline)
(display "Result ") 
(display (max3 3 3 1)) (newline)
(display ".....should be 3") (newline)
(display "============================") (newline)
(display "Result ") 
(display (max3 3 3 3)) (newline)
(display ".....should be 3") (newline)
(display "============================") (newline)
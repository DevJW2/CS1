;Jeffrey Weng
;mcjeffrey168@gmail.com

;1. getDigit
(define getDigit (lambda(number base position)
                   (modulo (quotient number (expt base position)) 5)))

;2. bwkYear
(define bwkyear (lambda(serviceMonth) (quotient serviceMonth 12)))

;3. bwkMonth
(define bwkMonth (lambda(serviceMonth) (modulo serviceMonth 12)))

;4 year_monthsLater
(define year_monthsLater (lambda(startYear startMonth plusMonths) (+ startYear (quotient (+ startMonth plusMonths) 12))))

;5 months_monthsLater
(define months_monthsLater(lambda(startYear startMonth plusMonths) (+ (* startYear 12) startMonth plusMonths)))


;1
(display "Value: ")
(display(getDigit 863 5 3)) (newline)
;2
(display "Year: ")
(display(bwkyear 12)) (newline)
;3
(display "Month: ")
(display(bwkMonth 11)) (newline)
;4
(display "Year_monthsLater: ")
(display(year_monthsLater 1 2 10)) (newline)
;5
(display "month_monthsLater: ")
(display(months_monthsLater 1 2 10)) (newline)


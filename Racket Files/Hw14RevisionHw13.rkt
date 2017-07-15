;Favorite Number Procedures
(define fav 7)
(display "My Favorite Number: ")
(display fav)
(newline)

(display "My value that is half my favorite number: ")
(display (* fav 0.5))
(newline)

(display "The negative of my favorite number: ")
(display (- fav))
(newline)
(newline)

(define fav 2)
(display "My Favorite Number: ")
(display fav)
(newline)

(display "The absolute value of my second-favorite number: ")
(display (abs fav))
(newline)

(display "The fourth root of the fourth power of my second-favorite number: ")
(display (expt (expt fav 4) 1/4))
(newline)
(newline)

;Roots
(define a 2.71828)
(define b 7.64)
(define c 1.616)

(display "The First Root is: ")
(display(/(+ (- b) (sqrt (- (expt b 2)(* 4 a c)))) (* 2 a)))
(newline)

(display "The Second Root is: ")
(display(/(- (- b) (sqrt (- (expt b 2)(* 4 a c)))) (* 2 a)))
(newline)
(newline)

(define a -0.618)
(define b 1.618)
(define c 1.732)

(display "The First Root of the 2nd equation is: ")
(display(/(+ (- b) (sqrt (- (expt b 2)(* 4 a c)))) (* 2 a)))
(newline)

(display "The Second Root of the 2nd equation is: ")
(display(/(- (- b) (sqrt (- (expt b 2)(* 4 a c)))) (* 2 a)))
(newline)

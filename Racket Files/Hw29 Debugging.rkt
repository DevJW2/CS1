; Hw 29
; Jeffrey Weng, mcjeffrey168@gmail.com
; Took from Mr.Holmes and EDITED

; helper procedures

; 1. circleArea_fromRadius
(display "1. circleArea_fromRadius") (newline) (newline)
(define circleArea_fromRadius 
  (lambda (radius)
    (* 3 (expt radius 2)) ; use 3 to approximate pi
    ))
; tests
(display "   in circleArea_fromRadius") (newline)
(display "      radius = 5") (newline)
(display (circleArea_fromRadius 5))  ;expecting 75
(newline) (newline)
(display "   in circleArea_fromRadius") (newline)
(display "      radius = 10") (newline)
(display (circleArea_fromRadius 10))  ;expecting 300
(newline)
(display "-----------------") (newline) (newline)


; 2. circleArea_fromDiameter
(display "2. circleArea_fromDiameter") (newline) (newline)
(define circleArea_fromDiameter
  (lambda (diameter)
    (circleArea_fromRadius (/ diameter 2))
    ))
(display "   in circleArea_fromDiameter") (newline)
(display "      Diameter = 10") (newline)
(display (circleArea_fromDiameter 10))(newline) (newline)
(display "   in circleArea_fromDiameter") (newline)
(display "      Diameter = 20") (newline)
(display (circleArea_fromDiameter 20))(newline)
(display "-----------------") (newline) (newline)


; 3. annulus area
(display "3. annulus area") (newline) (newline)
(define annulusArea
  (lambda (innerRadius outerRadius)
    (- (circleArea_fromRadius outerRadius)
       (circleArea_fromRadius innerRadius))
    ))

; tests
(display "   in annulus area") (newline)
(display "      innerRadius = 1 outerRadius = 2") (newline)
(display (annulusArea 1 2)) ; expecting 3 * pi, ~9.3 
(newline) (newline)
(display "   in annulus area") (newline)
(display "      innerRadius = 2 outerRadius = 3") (newline)
(display (annulusArea 2 3)) ; expecting 5 * pi, ~15.5
(newline)
(display "-----------------") (newline) (newline)


; 4. target area
(display "4. targetArea ") (newline) (newline)
(define targetArea
  (lambda (smallestRadius)
    (+ (annulusArea      smallestRadius  (* 2 smallestRadius))
       (annulusArea (* 3 smallestRadius) (* 4 smallestRadius))
       (annulusArea (* 5 smallestRadius) (* 6 smallestRadius))
       )
    )) ; end of lambda and define
(display "   in targetArea") (newline)
(display "      smallestRadius = 1") (newline)
(display  (targetArea 1) )(newline) 
(display "-----------------") (newline) (newline)
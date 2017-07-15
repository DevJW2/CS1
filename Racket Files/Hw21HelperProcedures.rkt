;Hw # 21
;Jeffrey Weng
;mcjeffrey168@gmail.com

;1. circleArea_fromRadius
(define circleArea_fromRadius(lambda(radius)
                               (* 3.14 (expt radius 2))
                               ))
;2. circleArea_fromDiameter
(define circleArea_fromDiameter(lambda(diameter)
                                 (circleArea_fromRadius (/ diameter 2))))

;3 annulusArea
(define annulusArea(lambda(larger_radius smaller_radius)
                     (- (circleArea_fromRadius larger_radius)
                        (circleArea_fromRadius smaller_radius))))
;4 targetArea
(define targetArea(lambda(inner_radius)
                    (+ (annulusArea (* inner_radius 2) inner_radius)
                       (annulusArea (* inner_radius 4) (* inner_radius 2))
                       (annulusArea (* inner_radius 8) (* inner_radius 4)))
                    ))

;1
(display "circle area from radius: ") (newline)
(display(circleArea_fromRadius 5)) (newline)
(display(circleArea_fromRadius 10)) (newline)
;2
(display "circle area from diameter: ") (newline)
(display(circleArea_fromDiameter 10)) (newline)
(display(circleArea_fromDiameter 20)) (newline)
;3
(display "annulus area: ") (newline)
(display(annulusArea 10 5)) (newline)
(display(annulusArea 20 10)) (newline)
;4
(display "target area: ") (newline)
(display(targetArea 5)) (newline)
(display(targetArea 10)) (newline)
;Jeffrey Weng
;mcjeffrey168@gmail.com
;Hw # 24

;0 getGof
(define getGof(lambda(sophs) (quotient sophs 5)))
;1 units
(define units(lambda(sophs) (modulo sophs 5)))
;2 getGofGof
(define getGofGof(lambda(sophs) (quotient sophs 25)))
;3 GofExcludeFromTheGofGof
(define GofExcludeFromTheGofGof(lambda(sophs) (modulo sophs 25)))
;4 Continue the pattern
(define getGofGofGof(lambda(sophs) (quotient sophs 125)))
(define GofExcludedFromTheGofGofGof(lambda(sophs) (modulo sophs 125)))

(display (getGof 863)) (newline)
(display (units 863)) (newline)
(display (getGofGof 863)) (newline)
(display (GofExcludeFromTheGofGof 863)) (newline)
(display (getGofGofGof 863)) (newline)
(display (GofExcludedFromTheGofGofGof 863)) (newline)

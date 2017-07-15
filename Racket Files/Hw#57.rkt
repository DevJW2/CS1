;1 Flatten

; template for recursive solutions on shrinking lists

;Find the flattened list for a given list
(display "Find the flattened list for a given list") (newline)
(define flatten
  (lambda (L)  ; parameters [0c]
    
    ; show the parameter value(s), for debugging
    (display "     L = ") (display L) (newline)
    (newline) 
    
    (if (not (null? L))  ; Choose between base case(s) vs. recursive cases [2a]
        
        ; solution for recursive cases [1b]
        (append
         (if (list? (car L))
             (flatten (car L))
             (list(car L))
             )
         (flatten (cdr L))
         )
        ; end of "solution for recursive cases"
        
        ; solution for base case [2b]
        '()
        )  ;end of "Choose between base case(s) vs. recursive cases"
    )) ; end of lambda and define


; tests  [0b]
;base case(s)
(display (flatten '()))
(display " ...should be ()") (newline)
(display "-----------------") (newline) (newline)

; simple recursive case(s)
(display (flatten '(3 (1 2))))
(display " ...should be (3 1 2)") (newline)
(display "-----------------") (newline) (newline)

; cases requiring multiple recursive calls
(display (flatten '((1 2 3 4) 5 6)))
(display " ...should be (1 2 3 4 5 6)") (newline) 
(display "-----------------") (newline) (newline)


#|  hw 57
    Jeffrey Weng mcjeffrey168@gmail.com
--------------------------------------------
Structuring questions for recursive problems
0  structure of the problem
---------------------------
0a. What problem are you asked to solve?
    and What does "size" mean in the context of that problem?
A program that copies alternating elements from a list, starting with the first element.
The resulting list is therefore about half as long as the original.
Size = Length of the list 

0b. What samples will test the procedure and what answers are
    required? You must know the expected answers, and tests
    should be the smallest useful ones.
(alternating '(1 2 3 4)) = (1 3)
(alternating '(1 2 3 4 5 6)) = (1 3 5)
0c. What information do you have to be told?
    That is, what information has to be supplied as parameters?
The list

0d. What is the structure of the answer you will produce?
    That is, what will your function produce?
    A number? An integer? A Boolean? A list?
A list

1   structure of the recursive solution
---------------------------------------
1a. What problem can Mr. Brooks solve? Use your answers to 0a 
    to describe the same problem, except smaller in size,
    according to your meaning for "size".
The recursive solution, the smaller sub-problem is solved by finding the
alternating numbers in the smaller list omitting two elements. 

1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?
The recursive sub-problem will ommit the first two elements from the list
and return the first element in the smaller list.
The first element would just be returned
the solutions to both of these procedures will be combined using the append 

2  structure of the base case solution
--------------------------------------
2a.  What is the base case?  That is what is the smallest version 
     of this problem that you are willing to answer?
     Equivalently, what is the smallest version that it makes 
     any sense for me to ask you? 
     You must be able to solve this smallest version without
     asking anything of Mr. Brooks.
the first element 

2b.  How can you solve the base case for this problem?
return the first element 

end of structuring questions
-------------------------------------------- |# 

; Alternates the list starting from the first element [from question 0a]
(display "Alternating") (newline)
(define alternating
  (lambda (L)  ; parameters [0c]
    
    ; show the parameter value(s), for debugging
    (display "     L = ") (display L) (newline)
    (newline) 
    (if (null? L)
        0
        (if (even? (length L))
            (if (not(null? (cddr L)))  ; Choose between base case(s) vs. recursive cases [2a]
                
                ; solution for recursive cases [1b]
                ; Use a procedure like +, APPEND, AND, or OR to combine the results...
                (append
                 
                 ; ... of handling the first element...
                 (list(car L))
                 ;end of handling the first element
                 
                 ; ...with whatever Mr. Brooks does with the rest of the list
                 (alternating (cddr L))
                 
                 )  ; end of "solution for recursive cases"
                
                ; solution for base case [2b]
                (list (car L))
                
                )
            (if (not(null? (cdr L)))  ; Choose between base case(s) vs. recursive cases [2a]
                
                ; solution for recursive cases [1b]
                ; Use a procedure like +, APPEND, AND, or OR to combine the results...
                (append
                 
                 ; ... of handling the first element...
                 (list(car L))
                 ;end of handling the first element
                 
                 ; ...with whatever Mr. Brooks does with the rest of the list
                 (alternating (cddr L))
                 
                 )  ; end of "solution for recursive cases"
                
                ; solution for base case [2b]
                (list (car L))
            )))  ;end of "Choose between base case(s) vs. recursive cases"
    )) ; end of lambda and define

; tests  [0b]
;base case(s)
(display (alternating '() ))
(display " ...should be 0") (newline)
(display "-----------------") (newline) (newline)

; simple recursive case(s)
(display (alternating '(1) ))
(display " ...should be 1") (newline)
(display "-----------------") (newline) (newline)

; cases requiring multiple recursive calls
(display (alternating '(1 2 3 4 5) ))
(display " ...should be (1 3 5)") (newline) 
(display "-----------------") (newline) (newline)
;---------------------------------




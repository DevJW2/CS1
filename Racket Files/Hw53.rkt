#|  hw53
    Jeffrey Weng mcjeffrey168@gmail.com
    worked with David Liu 
--------------------------------------------
Structuring questions for recursive problems
0  structure of the problem
---------------------------
0a. What problem are you asked to solve?
    and What does "size" mean in the context of that problem?
To find the reverse list of a list
size = length of list 
0b. What samples will test the procedure and what answers are
    required? You must know the expected answers, and tests
    should be the smallest useful ones.
(reverseOfList '(1 2 3)) = (3 2 1)
(reverseOfList '(1)) = (1)

0c. What information do you have to be told?
    That is, what information has to be supplied as parameters?
A list 

0d. What is the structure of the answer you will produce?
    That is, what will your function produce?
    A number? An integer? A Boolean? A list?
A list

1   structure of the recursive solution
---------------------------------------
1a. What problem can Mr. Brooks solve? Use your answers to 0a 
    to describe the same problem, except smaller in size,
    according to your meaning for "size".
Finds the reverse of (size-1) of the list  

1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?
Find the reverse of (size - 1) of the list
and append the car of the list into the new reversed list

2  structure of the base case solution
--------------------------------------
2a.  What is the base case?  That is what is the smallest version 
     of this problem that you are willing to answer?
     Equivalently, what is the smallest version that it makes 
     any sense for me to ask you? 
     You must be able to solve this smallest version without
     asking anything of Mr. Brooks.
a list with one element 

2b.  How can you solve the base case for this problem?
return the list with the one element 

end of structuring questions
-------------------------------------------- |# 


; template for recursive solutions on shrinking lists

;Finds the reverse of a list [from question 0a]
(display "Reverse of list") (newline)
(define reverseOfList 
  (lambda (L)  ; parameters [0c]
    
    ; show the parameter value(s), for debugging
    (display "     L = ") (display L) (newline)
    (newline) 
    
    (if (> (length L) 1)  ; Choose between base case(s) vs. recursive cases [2a]
        
        ; solution for recursive cases [1b]
        (append (reverseOfList (cdr L)) 
                (list (car L))
         
              )  ; end of "solution for recursive cases"

        ; solution for base case [2b]
        (list (car L))
        )  ;end of "Choose between base case(s) vs. recursive cases"
    )) ; end of lambda and define

; tests  [0b]
;base case(s)
(display (reverseOfList '(1) ))
(display " ...should be (1)") (newline)
(display "-----------------") (newline) (newline)

; simple recursive case(s)
(display (reverseOfList '(1 2) ))
(display " ...should be (2 1)") (newline)
(display "-----------------") (newline) (newline)

;cases requiring multiple recursive calls
(display (reverseOfList '(1 2 3 4 5) ))
(display " ...should be (5 4 3 2 1)") (newline) 
(display "-----------------") (newline) (newline)

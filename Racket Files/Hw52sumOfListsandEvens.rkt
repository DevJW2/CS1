#|  hw 52
    Jeffrey Weng mcjeffrey168@gmail.com
--------------------------------------------
Structuring questions for recursive problems
0  structure of the problem
---------------------------
0a. What problem are you asked to solve?
    and What does "size" mean in the context of that problem?
To solve the sum of all the atoms in a list
Size = Length of L

0b. What samples will test the procedure and what answers are
    required? You must know the expected answers, and tests
    should be the smallest useful ones.

(sumOfList '()) --> 0
(sumOfList '(3)) --> 3
(sumOfList '(3 4)) --> 7

0c. What information do you have to be told?
    That is, what information has to be supplied as parameters?
the list

0d. What is the structure of the answer you will produce?
    That is, what will your function produce?
    A number? An integer? A Boolean? A list?
a number

1   structure of the recursive solution
---------------------------------------
1a. What problem can Mr. Brooks solve? Use your answers to 0a 
    to describe the same problem, except smaller in size,
    according to your meaning for "size".
Find the sum in a list of length (size - 1)

1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?
Ask him for the sum in the last (size - 1) elements.
Calculate the sum of his answer and the first element in the list. 

2  structure of the base case solution
--------------------------------------
2a.  What is the base case?  That is what is the smallest version 
     of this problem that you are willing to answer?
     Equivalently, what is the smallest version that it makes 
     any sense for me to ask you? 
     You must be able to solve this smallest version without
     asking anything of Mr. Brooks.
a list with with one element 

2b.  How can you solve the base case for this problem?
return the element from the list 

end of structuring questions
-------------------------------------------- |# 


; template for recursive solutions on shrinking lists

;Find the sum in the given list, L. size = length of L
(display "Find the sum of the given list") (newline)
(define sumOfList
  (lambda (L)  ; parameters [0c]
    
    ; show the parameter value(s), for debugging
    (display "     L = ") (display L) (newline)
    (newline) 
    
    (if (> (length L) 1)  ; Choose between base case(s) vs. recursive cases [2a]
        
        ; solution for recursive cases [1b]
        (sum2 (sumOfList (cdr L))
              (car L)
              )  ; end of "solution for recursive cases"

        ; solution for base case [2b]
        (car L)
        )  ;end of "Choose between base case(s) vs. recursive cases"
    )) ; end of lambda and define

(define sum2 (lambda (first second)
               (+ first second)
               ))

; tests  [0b]
;base case(s)
(display (sumOfList '(1) ))
(display " ...should be 1") (newline)
(display "-----------------") (newline) (newline)

; simple recursive case(s)
(display (sumOfList '(2 3) ))
(display " ...should be 5") (newline)
(display "-----------------") (newline) (newline)

; cases requiring multiple recursive calls
(display (sumOfList '(1 2 3 4) ))
(display " ...should be 10") (newline) 
(display "-----------------") (newline) (newline)



(display "SUM OF EVENS PROBLEM") (newline)
(display "---------------------------------------------") (newline) (newline)


#|  hw52
--------------------------------------------
Structuring questions for recursive problems
0  structure of the problem
---------------------------
0a. What problem are you asked to solve?
    and What does "size" mean in the context of that problem?
Find the sum of all even numbers in a list
size = length of L

0b. What samples will test the procedure and what answers are
    required? You must know the expected answers, and tests
    should be the smallest useful ones.
(sumOfEvens '(1 2)) = 2
(sumOfEvens '(2)) = 2
(sumOfEvens '(1)) = 0
(sumOfEvens '(1 2 3 4)) = 6

0c. What information do you have to be told?
    That is, what information has to be supplied as parameters?

the list
0d. What is the structure of the answer you will produce?
    That is, what will your function produce?
    A number? An integer? A Boolean? A list?

an even number
1   structure of the recursive solution
---------------------------------------
1a. What problem can Mr. Brooks solve? Use your answers to 0a 
    to describe the same problem, except smaller in size,
    according to your meaning for "size".
Mr brooks will be solving for the sum of all even numbers (size - 1)

1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?
Find the sum of even numbers in a list (size - 1)
Calculate his answer and the first element in the list if it's an even number

2  structure of the base case solution
--------------------------------------
2a.  What is the base case?  That is what is the smallest version 
     of this problem that you are willing to answer?
     Equivalently, what is the smallest version that it makes 
     any sense for me to ask you? 
     You must be able to solve this smallest version without
     asking anything of Mr. Brooks.

one element list 
2b.  How can you solve the base case for this problem?
return the element list 

end of structuring questions
-------------------------------------------- |# 


; template for recursive solutions on shrinking lists

; Find the sum of all even numbers in a list [from question 0a]
(display "sum of all even numbers in a list") (newline)
(define sumOfEvens
  (lambda (L)  ; parameters [0c]
    
    ; show the parameter value(s), for debugging
    (display "     L = ") (display L) (newline)
    (newline) 
    
    (if (> (length L) 1)  ; Choose between base case(s) vs. recursive cases [2a]
        
        ; solution for recursive cases [1b]
        (sum2 (sumOfEvens (cdr L))
              (if (even? (car L))
                  (car L)
                  0
                  )
         
              )  ; end of "solution for recursive cases"

        ; solution for base case [2b]
        (if (even? (car L))
            (car L)
            0
            )
        )  ;end of "Choose between base case(s) vs. recursive cases"
    )) ; end of lambda and define




; tests  [0b]
;base case(s)
(display (sumOfEvens '(1) ))
(display " ...should be 0") (newline)
(display "-----------------") (newline) (newline)

; simple recursive case(s)
(display (sumOfEvens '(1 2) ))
(display " ...should be 2") (newline)
(display "-----------------") (newline) (newline)

; cases requiring multiple recursive calls
(display (sumOfEvens '(1 2 3 4) ))
(display " ...should be 6") (newline) 
(display "-----------------") (newline) (newline)

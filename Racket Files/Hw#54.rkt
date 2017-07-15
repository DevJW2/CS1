#|  hw54
    Jeffrey Weng mcjeffrey168@gmail.com 
--------------------------------------------
Structuring questions for recursive problems
0  structure of the problem
---------------------------
0a. What problem are you asked to solve?
    and What does "size" mean in the context of that problem?
find the duplicates of all the elements in the list 
size = length of L - 1
0b. What samples will test the procedure and what answers are
    required? You must know the expected answers, and tests
    should be the smallest useful ones.
(duplicate '(1 2 3)) = (1 1 2 2 3 3)

0c. What information do you have to be told?
    That is, what information has to be supplied as parameters?
the list

0d. What is the structure of the answer you will produce?
    That is, what will your function produce?
    A number? An integer? A Boolean? A list?
a list

1   structure of the recursive solution
---------------------------------------
1a. What problem can Mr. Brooks solve? Use your answers to 0a 
    to describe the same problem, except smaller in size,
    according to your meaning for "size".
the duplicates of all the numbers in L - 1

1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?
Mr.brooks will solve for the duplicate the number, returning the element twice

2  structure of the base case solution
--------------------------------------
2a.  What is the base case?  That is what is the smallest version 
     of this problem that you are willing to answer?
     Equivalently, what is the smallest version that it makes 
     any sense for me to ask you? 
     You must be able to solve this smallest version without
     asking anything of Mr. Brooks.

The base case would just be two similar elements
2b.  How can you solve the base case for this problem?
return the two similar elements

end of structuring questions
-------------------------------------------- |# 

; Finds the duplicate of each element and returns the new list [from question 0a]
(display "Find the duplicate of each element") (newline)
(define duplicate
  (lambda (L)  ; parameters [0c]
    
    ; show the parameter value(s), for debugging
    (display "     L = ") (display L) (newline)
    (newline) 
    
    (if (> (length L) 1)  ; Choose between base case(s) vs. recursive cases [2a]
        
        ; solution for recursive cases [1b]
        ; Use a procedure like +, APPEND, AND, or OR to combine the results...
        (append
         
         ; ... of handling the first element...
         (list (car L) (car L))
         ;end of handling the first element
         
         ; ...with whatever Mr. Brooks does with the rest of the list
         (duplicate (cdr L))
         
         )  ; end of "solution for recursive cases"

        ; solution for base case [2b]
        (list (car L) (car L))
        
        )  ;end of "Choose between base case(s) vs. recursive cases"
    )) ; end of lambda and define

; tests  [0b]
;base case(s)
(display (duplicate '(1 2) ))
(display " ...should be (1 1 2 2)") (newline)
(display "-----------------") (newline) (newline)

; simple recursive case(s)
(display (duplicate '(1 2 3) ))
(display " ...should be (1 1 2 2 3 3)") (newline)
(display "-----------------") (newline) (newline)

; cases requiring multiple recursive calls
(display (duplicate '(1 2 3 4) ))
(display " ...should be (1 1 2 2 3 3 4 4)") (newline) 
(display "-----------------") (newline) (newline)



#|  
--------------------------------------------
Structuring questions for recursive problems
0  structure of the problem
---------------------------
0a. What problem are you asked to solve?
    and What does "size" mean in the context of that problem?
Exclude all elements in a list that is even
size = lenght of list - 1

0b. What samples will test the procedure and what answers are
    required? You must know the expected answers, and tests
    should be the smallest useful ones.

(copyOmittingOdd '(1 2 3 4)) = (1 3)
0c. What information do you have to be told?
    That is, what information has to be supplied as parameters?
the list

0d. What is the structure of the answer you will produce?
    That is, what will your function produce?
    A number? An integer? A Boolean? A list?
a list

1   structure of the recursive solution
---------------------------------------
1a. What problem can Mr. Brooks solve? Use your answers to 0a 
    to describe the same problem, except smaller in size,
    according to your meaning for "size".
find all odd elements in a smaller size list, and exclude all the even numbers

1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?
Mr.brooks will test if the number is even or odd, returning only if its odd
and an empty list if its even. 

2  structure of the base case solution
--------------------------------------
2a.  What is the base case?  That is what is the smallest version 
     of this problem that you are willing to answer?
     Equivalently, what is the smallest version that it makes 
     any sense for me to ask you? 
     You must be able to solve this smallest version without
     asking anything of Mr. Brooks.
the base case would be a one element list.

2b.  How can you solve the base case for this problem?
return the one element list 

end of structuring questions
-------------------------------------------- |# 

; Return a list with no even elements [from question 0a]
(display "A list with no even elements") (newline)
(define copyOmittingOdd 
  (lambda (L)  ; parameters [0c]
    
    ; show the parameter value(s), for debugging
    (display "     L = ") (display L) (newline)
    (newline) 
    
    (if (> (length L) 1)  ; Choose between base case(s) vs. recursive cases [2a]
        
        ; solution for recursive cases [1b]
        ; Use a procedure like +, APPEND, AND, or OR to combine the results...
        (append 
         
         ; ... of handling the first element...
         (if (odd? (car L))
             (list(car L))
             '()
             )
         ;end of handling the first element
         
         ; ...with whatever Mr. Brooks does with the rest of the list
         (copyOmittingOdd (cdr L))
         
         )  ; end of "solution for recursive cases"

        ; solution for base case [2b]
        (if (odd?(car L))
                 (list(car L))
                 '()
                 )
        
        )  ;end of "Choose between base case(s) vs. recursive cases"
    )) ; end of lambda and define

; tests  [0b]
;base case(s)
(display (copyOmittingOdd '(1) ))
(display " ...should be (1)") (newline)
(display "-----------------") (newline) (newline)

; simple recursive case(s)
(display (copyOmittingOdd '(1 2 3) ))
(display " ...should be (1 3)") (newline)
(display "-----------------") (newline) (newline)

; cases requiring multiple recursive calls
(display (copyOmittingOdd '(1 2 3 4) ))
(display " ...should be (1 3)") (newline) 
(display "-----------------") (newline) (newline)
;---------------------------------

#|  
--------------------------------------------
Structuring questions for recursive problems
0  structure of the problem
---------------------------
0a. What problem are you asked to solve?
    and What does "size" mean in the context of that problem?
Find all elements in a list excluding the last element
size is length of L - 1

0b. What samples will test the procedure and what answers are
    required? You must know the expected answers, and tests
    should be the smallest useful ones.
(allButLast '(1 2 3 4)) = (1 2 3)

0c. What information do you have to be told?
    That is, what information has to be supplied as parameters?
a list

0d. What is the structure of the answer you will produce?
    That is, what will your function produce?
    A number? An integer? A Boolean? A list?
a list

1   structure of the recursive solution
---------------------------------------
1a. What problem can Mr. Brooks solve? Use your answers to 0a 
    to describe the same problem, except smaller in size,
    according to your meaning for "size".
find all the numbers in a list excluding the last element in a smaller list

1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?
Mr.brooks will just return all the elements in the list given, stopping at the
second to last element. 

2  structure of the base case solution
--------------------------------------
2a.  What is the base case?  That is what is the smallest version 
     of this problem that you are willing to answer?
     Equivalently, what is the smallest version that it makes 
     any sense for me to ask you? 
     You must be able to solve this smallest version without
     asking anything of Mr. Brooks.
the base case would be just the one element list

2b.  How can you solve the base case for this problem?
return the one element list

end of structuring questions
-------------------------------------------- |# 

; return all the elements besides the last element[from question 0a]
(display "allButLast") (newline)
(define allButLast 
  (lambda (L)  ; parameters [0c]
    
    ; show the parameter value(s), for debugging
    (display "     L = ") (display L) (newline)
    (newline) 
    
    (if (> (length L) 2)  ; Choose between base case(s) vs. recursive cases [2a]
        
        ; solution for recursive cases [1b]
        ; Use a procedure like +, APPEND, AND, or OR to combine the results...
        (append
         
         ; ... of handling the first element...
         (list(car L))
         ;end of handling the first element
         
         ; ...with whatever Mr. Brooks does with the rest of the list
         (allButLast (cdr L))
         
         )  ; end of "solution for recursive cases"

        ; solution for base case [2b]
        (list(car L))
        
        )  ;end of "Choose between base case(s) vs. recursive cases"
    )) ; end of lambda and define

; tests  [0b]
;base case(s)
(display (allButLast '(1 2) ))
(display " ...should be (1)") (newline)
(display "-----------------") (newline) (newline)

; simple recursive case(s)
(display (allButLast '(1 2 3 4 5) ))
(display " ...should be (1 2 3 4)") (newline)
(display "-----------------") (newline) (newline)

; cases requiring multiple recursive calls
(display (allButLast '(1 2 3 4 5 6) ))
(display " ...should be (1 2 3 4 5)") (newline) 
(display "-----------------") (newline) (newline)
;---------------------------------


#|  
--------------------------------------------
Structuring questions for recursive problems
0  structure of the problem
---------------------------
0a. What problem are you asked to solve?
    and What does "size" mean in the context of that problem?
Find the uncar, find the last element of the list
size = the length of L - 1

0b. What samples will test the procedure and what answers are
    required? You must know the expected answers, and tests
    should be the smallest useful ones.
(last '(1 2 3)) = (3)

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
mr.brooks finds the last element of a list - 1

1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?
He will use the reverse of the problem and call the the car 

2  structure of the base case solution
--------------------------------------
2a.  What is the base case?  That is what is the smallest version 
     of this problem that you are willing to answer?
     Equivalently, what is the smallest version that it makes 
     any sense for me to ask you? 
     You must be able to solve this smallest version without
     asking anything of Mr. Brooks.
also an one element list 

2b.  How can you solve the base case for this problem?

return the one element list
end of structuring questions
-------------------------------------------- |# 

(define (reverseOfList L)
  (if (> (length L) 1)
      (append (reverseOfList (cdr L))
              (list (car L)))
      (list (car L))
      ) 

  )

; Find the last element in a list [from question 0a]
(display "The last element in the list") (newline)
(define (last L)
  (car(reverseOfList L))
  )

; tests  [0b]
;base case(s)
(display (last '(1 2 3) ))
(display " ...should be (3)") (newline)
(display "-----------------") (newline) (newline)

; simple recursive case(s)
(display (last '(1 2 3 4 5 6) ))
(display " ...should be 6") (newline)
(display "-----------------") (newline) (newline)

; cases requiring multiple recursive calls
(display (last '(1 2 3 4 5 6 77 8) ))
(display " ...should be 8") (newline) 
(display "-----------------") (newline) (newline)
;---------------------------------









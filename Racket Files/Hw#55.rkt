#|  hw55
    Jeffrey Weng mcjeffrey168@gmail.com
  
--------------------------------------------
Structuring questions for recursive problems
0  structure of the problem
---------------------------
0a. What problem are you asked to solve?
    and What does "size" mean in the context of that problem?
Count the number of atoms in a given list, L.
Size = number of ELEMENTS (not atoms) in L

0b. What samples will test the procedure and what answers are
    required? You must know the expected answers, and tests
    should be the smallest useful ones.
(countAtoms ‘(1 2 3)) = 3
(countAtoms ‘()) = 0


0c. What information do you have to be told?
    That is, what information has to be supplied as parameters?
Answer: a list, possibly with elements that are sub-lists

0d. What is the structure of the answer you will produce?
    That is, what will your function produce?
    A number? An integer? A Boolean? A list?

Answer: a number
1   structure of the recursive solution
---------------------------------------
1a. What problem can Mr. Brooks solve? Use your answers to 0a 
    to describe the same problem, except smaller in size,
    according to your meaning for "size".

Mr.Brooks counts the number of atoms in the original list-1
1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?

Mr.Brooks will count the atoms in the smaller list,
Using this answer and add the amount of atoms in the
First element, by testing if it’s a list or not.
2  structure of the base case solution
--------------------------------------
2a.  What is the base case?  That is what is the smallest version 
     of this problem that you are willing to answer?
     Equivalently, what is the smallest version that it makes 
     any sense for me to ask you? 
     You must be able to solve this smallest version without
     asking anything of Mr. Brooks.

Give a value of 0
2b.  How can you solve the base case for this problem?
Return the value of 0

end of structuring questions
-------------------------------------------- |# 

; How many atoms are in List L, including in any sub-lists[from question 0a]
(display "countAtoms") (newline)
(define countAtoms 
  (lambda (L)  ; parameters [0c]
    
    ; show the parameter value(s), for debugging
    (display "     L = ") (display L) (newline)
    (newline) 
    
    (if (not(null? L))  ; Choose between base case(s) vs. recursive cases [2a]
        
        ; solution for recursive cases [1b]
        ; Use a procedure like +, APPEND, AND, or OR to combine the results...
        (+
         
         ; ... of handling the first element...
         (if (list? (car L))
             (countAtoms (car L))
             1
             
             )
         ;end of handling the first element
         
         ; ...with whatever Mr. Brooks does with the rest of the list
         (countAtoms (cdr L))
         
         )  ; end of "solution for recursive cases"
        
        ; solution for base case [2b]
        0
        
        )  ;end of "Choose between base case(s) vs. recursive cases"
    )) ; end of lambda and define

; tests  [0b]
;base case(s)
(display (countAtoms '() ))
(display " ...should be 0") (newline)
(display "-----------------") (newline) (newline)

; simple recursive case(s)
(display (countAtoms '(2 1 3) ))
(display " ...should be 3") (newline)
(display "-----------------") (newline) (newline)

; cases requiring multiple recursive calls
(display (countAtoms '(1 2 3 (1 2)) ))
(display " ...should be 5") (newline) 
(display "-----------------") (newline) (newline)
;---------------------------------



#|
  
--------------------------------------------
Structuring questions for recursive problems
0  structure of the problem
---------------------------
0a. What problem are you asked to solve?
    and What does "size" mean in the context of that problem?
Count the number of atoms in a given list that is even, L.
Size = number of ELEMENTS (not atoms) in L

0b. What samples will test the procedure and what answers are
    required? You must know the expected answers, and tests
    should be the smallest useful ones.
(countAtoms ‘(1 2 3)) = 1
(countAtoms ‘()) = 0


0c. What information do you have to be told?
    That is, what information has to be supplied as parameters?
Answer: a list, possibly with elements that are sub-lists

0d. What is the structure of the answer you will produce?
    That is, what will your function produce?
    A number? An integer? A Boolean? A list?

Answer: a number specifically an even number 
1   structure of the recursive solution
---------------------------------------
1a. What problem can Mr. Brooks solve? Use your answers to 0a 
    to describe the same problem, except smaller in size,
    according to your meaning for "size".

Mr.Brooks counts the number of atoms in the original list but list - 1 that is
even
1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?

Mr.Brooks will count the atoms in the smaller list that is even, 
Using this answer and add the amount of atoms in the
First element, by testing if it’s a list or not and also testing if its even.
2  structure of the base case solution
--------------------------------------
2a.  What is the base case?  That is what is the smallest version 
     of this problem that you are willing to answer?
     Equivalently, what is the smallest version that it makes 
     any sense for me to ask you? 
     You must be able to solve this smallest version without
     asking anything of Mr. Brooks.

Give a value of 0
2b.  How can you solve the base case for this problem?
Return the value of 0

end of structuring questions
-------------------------------------------- |# 

; How many even atoms are in List L, including in any sub-lists[from question 0a]
(display "countEvensDeep") (newline)
(define countEvensDeep
  (lambda (L)  ; parameters [0c]
    
    ; show the parameter value(s), for debugging
    (display "     L = ") (display L) (newline)
    (newline) 
    
    (if (not(null? L))  ; Choose between base case(s) vs. recursive cases [2a]
        
        ; solution for recursive cases [1b]
        ; Use a procedure like +, APPEND, AND, or OR to combine the results...
        (+
         
         ; ... of handling the first element...
         (if (list? (car L))
             (countEvensDeep (car L))
             (if (even? (car L))
                 1
                 0
                 )
             
             )
         ;end of handling the first element
         
         ; ...with whatever Mr. Brooks does with the rest of the list
         (countEvensDeep (cdr L))
         
         )  ; end of "solution for recursive cases"
        
        ; solution for base case [2b]
        0
        
        )  ;end of "Choose between base case(s) vs. recursive cases"
    )) ; end of lambda and define

; tests  [0b]
;base case(s)
(display (countEvensDeep '() ))
(display " ...should be 0") (newline)
(display "-----------------") (newline) (newline)

; simple recursive case(s)
(display (countEvensDeep '(2 1 3) ))
(display " ...should be 1") (newline)
(display "-----------------") (newline) (newline)

; cases requiring multiple recursive calls
(display (countEvensDeep '(1 2 3 (1 2 3 4 5 6)) ))
(display " ...should be 4") (newline) 
(display "-----------------") (newline) (newline)
;---------------------------------




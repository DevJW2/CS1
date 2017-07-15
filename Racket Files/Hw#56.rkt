#|
What use is this aim?
The most important part/goal of the day is usually the aim.
Being able to answer it means you understood most of the conversation
held in class. 

How do you program boolean operations on lists?
Use the function (equal? x y). This compares any two elements and determines
if they are similar or different, and returns a boolean value: #t or #f. 


When do you need the equal procedure?
As stated in the second aim, it is used to compare any two elements and determine
wheter their equal or not, while the other boolean comparator the equal operator
that was discussed in class, only works on numbers. 


|#



#|  hw 56
    Jeffrey Weng mcjeffrey168@gmail.com
--------------------------------------------
Structuring questions for recursive problems
0  structure of the problem
---------------------------
0a. What problem are you asked to solve?
    and What does "size" mean in the context of that problem?
To find if the element A is in List L.
Size = Length of L

0b. What samples will test the procedure and what answers are
    required? You must know the expected answers, and tests
    should be the smallest useful ones.

(hasA '(1 2 3 4) 4) = #t
(hasA '(1 2 3) 4) = #f

0c. What information do you have to be told?
    That is, what information has to be supplied as parameters?
a list and a element that is tested

0d. What is the structure of the answer you will produce?
    That is, what will your function produce?
    A number? An integer? A Boolean? A list?
a boolean

1   structure of the recursive solution
---------------------------------------
1a. What problem can Mr. Brooks solve? Use your answers to 0a 
    to describe the same problem, except smaller in size,
    according to your meaning for "size".
Mr.Brooks will the solve: if the element a is in the list that is smaller
in size.

1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?
Ask Mr.brooks if the element a is in the list - 1
test if the first element is element a
then test if mr.brooks give a true OR the first element is true

2  structure of the base case solution
--------------------------------------
2a.  What is the base case?  That is what is the smallest version 
     of this problem that you are willing to answer?
     Equivalently, what is the smallest version that it makes 
     any sense for me to ask you? 
     You must be able to solve this smallest version without
     asking anything of Mr. Brooks.
the value False

2b.  How can you solve the base case for this problem?
return the False

end of structuring questions
-------------------------------------------- |# 


; template for recursive solutions on shrinking lists

;Find if element A is in the list
(display "Find if the element is in the given list") (newline)
(define hasA
  (lambda (L P)  ; parameters [0c]
    
    ; show the parameter value(s), for debugging
    (display "     L = ") (display L) (newline)
    (display "     P = ") (display P) (newline)
    (newline) 
    
    (if (not (null? L))  ; Choose between base case(s) vs. recursive cases [2a]
        
        ; solution for recursive cases [1b]
        (or (= (car L) P)  
           (hasA (cdr L) P)
           )
                ; end of "solution for recursive cases"

        ; solution for base case [2b]
        #f
        )  ;end of "Choose between base case(s) vs. recursive cases"
    )) ; end of lambda and define


; tests  [0b]
;base case(s)
(display (hasA '() 123))
(display " ...should be #f") (newline)
(display "-----------------") (newline) (newline)

; simple recursive case(s)
(display (hasA '(3 2) 3))
(display " ...should be #t") (newline)
(display "-----------------") (newline) (newline)

; cases requiring multiple recursive calls
(display (hasA '(1 2 3 4 5 123) 2 ))
(display " ...should be #t") (newline) 
(display "-----------------") (newline) (newline)


;3
(define (flatten L)
  (append (car L) (cdr L))
  )

(display (flatten '((0 1 2) 3 4)))
(display "...should be (0 1 2 3 4)") (newline)





#| 
--------------------------------------------
Structuring questions for recursive problems
0  structure of the problem
---------------------------
0a. What problem are you asked to solve?
    and What does "size" mean in the context of that problem?
To produce a list with all the atoms in the list without any sublists
Size = Length of L

0b. What samples will test the procedure and what answers are
    required? You must know the expected answers, and tests
    should be the smallest useful ones.

(flatten '((1 2 3 4) 5) = (1 2 3 4 5)
(hasA '((1 2 3) 4) = (1 2 3 4)

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
Mr.Brooks will solve the flattened list for a smaller list 

1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?
Ask Mr.brooks to find the flattened list in the list - 1
test if the first element is a list or not 
then append all the values together

2  structure of the base case solution
--------------------------------------
2a.  What is the base case?  That is what is the smallest version 
     of this problem that you are willing to answer?
     Equivalently, what is the smallest version that it makes 
     any sense for me to ask you? 
     You must be able to solve this smallest version without
     asking anything of Mr. Brooks.
the null list 

2b.  How can you solve the base case for this problem?
return the null list 

end of structuring questions
-------------------------------------------- |# 


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




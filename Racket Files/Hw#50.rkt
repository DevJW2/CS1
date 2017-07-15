#|  hw#50
    Jeffrey Weng mcjeffrey168@gmail.com
    worked with: 
    help from:
--------------------------------------------
Structuring questions for recursive problems
0  structure of the problem
---------------------------
0a. What problem are you asked to solve?
    and What does "size" mean in the context of that problem?

Finding the largest element in a list. 
The size would be in terms of a larger number

0b. What samples will test the procedure and what answers are required?
    You must know the expected answers, and tests should be the smallest useful ones.

Samples include a list of numbers, where the larger number would
be produced. For example:
(maxOfList '(1 2 3)) would return 3
(maxOfList '(3 4 2)) would return 4

0c. What information do you have to be told?
    That is, what information has to be supplied as parameters?

Information:
the list of elements are needed. 


0d. What is the structure of the answer you will produce?
    That is, what will your function produce? A number? An integer? A Boolean? A list?

The the structure of the answer, the function would produce an integer.

1   structure of the recursive solution
---------------------------------------
1a. What problem can Mr. Brooks solve? Use your answers to 0a to describe
    the same problem, except smaller in size, according to your meaning for "size".

Brooks will solve the largest number in a smaller list.

1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?
The finding of the larger atom in a smaller list. 

2  structure of the base case solution
--------------------------------------
2a.  What is the base case?  That is what is the smallest version of this problem that
     you are willing to answer? Equivalently, what is the smallest version that it makes
     any sense for me to ask you?
     You must be able to solve this smallest version without asking anything of Mr. Brooks.

The base case in this case was just the answer 0, since im assuming we're dealing
with whole numbers. 
2b.  How can you solve the base case for this problem?
By cdr till i hit a null list, which was my choice. 

end of structuring questions
-------------------------------------------- |#
(define (maxOfList L)
  (if (not (null? L))
      (if (> (car L) (car(list(maxOfList(cdr L)))))
          (car L)
          (car(list(maxOfList(cdr L))))
          )
      0
      )
  )
(maxOfList '()) (newline)
(display "...should display 0") (newline)
(maxOfList '(1 2)) (newline)
(display "...should display 2") (newline)
(maxOfList '(2 1 3)) (newline)
(display "...should display 3") (newline)
(maxOfList '(3 1 2)) (newline)
(display "...should display 3") (newline)
(maxOfList '(1 2 3)) (newline)
(display "...should display 3") (newline)
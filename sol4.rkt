#lang racket
(provide (all-defined-out))

; #1 check_bst

#| Binary Search Tree : left branch values are smaller than
                        the value in the current node
                        and right branch values are larger than
                        the value in the current node|#

#|

  In Racket - list represent BST,
  a node with tree elements represents a node
  first element : the value in the node
  second element : left branch!!! (then, may be it is list)
  third element : right branch!!!

  no branch (= leaves) -> branch = ()

|#

#|check_bst : return boolean value - true if argument is a proper BST|#


(define (check_bst xs)
  (if (null? xs)
      #t
      (letrec ([root (car xs)]

               [rightcheck (lambda(node)
                             (if (null? node)
                                 #t
                                 (< root (car node))))]
               
               [leftcheck (lambda(node)
                            (if (null? node)
                                #t
                                (> root (car node))))]
               )
        (and (rightcheck (caddr xs)) (leftcheck (cadr xs)) (check_bst (caddr xs)) (check_bst(cadr xs)))
        )))


; #2 apply

#|
  BST 
|#

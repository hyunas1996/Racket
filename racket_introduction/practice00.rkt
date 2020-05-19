#lang racket

; define variable x, y
(define x 3)
(define y (+ x 2))

; define function cube
(define cube
  (lambda (x)
    (* x (* x x )))) ; * : multiplying function -> needs two arguments

; define funciton pow - recursive function
(define pow
  (lambda (x y)
    (if (= y 0)
        1
        (* x (pow x (- y 1))))))

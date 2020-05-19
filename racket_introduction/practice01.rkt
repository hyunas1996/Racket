#lang racket

; let's upload the function 'cube' and 'pow'

; original cube
(define cube_1
  (lambda (x)
    (* x (* x x))))

; better cube
(define cube_2
  (lambda (x)
    (* x x x)))

; best cube
(define (cube_3 x)
  (* x x x))

; original pow
(define pow_1
  (lambda (x y)
    (if (= y 0)
        1
        (* x (pow_1 x (- y 1))))))

; better & best pow
(define (pow_2 x y)
  (if (= y 0)
      1
      (* x (pow_2 x (- y 1)))))

; pow using currying
(define pow_3
  (lambda (x)
    (lambda (y)
      (if (= y 0)
          1
          (* x ((pow_3 x) (- y 1)))))))

; pow using simpler currying
(define ((pow_4 x) y)
  (if (= y 0)
      1
      (* x ((pow_4 x) (- y 1)))))

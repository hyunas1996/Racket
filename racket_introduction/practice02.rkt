#lang racket

; racket list examples

; car function - approach list's head
; cdr function - approach list's tail

; sum list elements
(define (sum xs)
  (if (null? xs)
      0
      (+ (car xs) (sum (cdr xs)))))

; concatenate two lists
; cons function - racket build in function
(define (my-append xs ys)
  (if (null? xs)
      ys
      (cons (car xs) (my-append (cdr xs) ys))))

; applying function 'f' to each element of list
; then make list of the result
(define (my-map f xs)
  (if (null? xs)
      null
      (cons (f (car xs)) (my-map f (cdr xs)))))


; upgrade sum function

; racket doesn't have datatype binding
; so if anything else type is encounterd
; will get a run-time error

(define (sum_2 xs)
  (if (null? xs)
      0
      (if (number? (car xs))
          (+ (car xs) (sum_2 (cdr xs)))
          (+ (sum_2 (car xs)) (sum_2 (cdr xs))))))

; best sum function using cond expression

; in racket, if there are multi conditions,
; then using cond expression is better than using if expression

; #t means for all the other cases

(define (sum_3 xs)
  (cond [(null? xs) 0]
        [(number? (car xs)) (+ (car xs) (sum_3 (cdr xs)))]
        [#t (+ (sum_3 (car xs)) (sum_3 (cdr xs)))]
        ))

; another best sum function

(define (sum_4 xs)
  (cond [(null? xs) 0]
        [(number? xs) xs]
        [(list? xs) (+ (sum_4 (car xs)) (sum_4 (cdr xs)))]
        [#t 0]
        ))
              


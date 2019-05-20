#lang racket

;(define (product term a next b)
;  (if (> a b)
;      1
;      (* (term a)
;         (product term (next a) next b))))

(define (product term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* (term a) result))))
  (iter a 1))
        
(define (add2 x)
  (+ x 2))

(define (fraction x)
  (* (/ (- x 1) x) (/ (+ x 1) x)))

(define pi (* 4 (product fraction 3.0 add2 1000000)))

(displayln pi)
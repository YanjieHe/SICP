#lang racket

(define (int-cons a b)
  (* (expt 2 a) (expt 3 b)))

(define (remove-a-divisor number divisor another)
    (if (= (remainder number divisor) 0)
        (remove-a-divisor (/ number divisor) divisor another)
        (log number another)))

(define (int-car pair)
  (remove-a-divisor pair 3 2))

(define (int-cdr pair)
  (remove-a-divisor pair 2 3))
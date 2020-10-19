#lang racket

(define (make-accumulator n)
  (lambda (amount)
    (set! n (+ n amount))
    n))

(define A (make-accumulator 5))
(A 10)
; 15
(A 10)
; 25
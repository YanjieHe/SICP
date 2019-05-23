#lang racket

(define (pair x y)
  (define (dispatch m)
    (cond ((= m 0) x)
          ((= m 1) y)
          (else (error "Argument not 0 or 1 -- PAIR" m))))
  dispatch)

(define (first z) (z 0))
(define (rest z) (z 1))
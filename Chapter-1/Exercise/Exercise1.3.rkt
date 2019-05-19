#lang racket

(define (sum-of-squares-of-two-larger-numbers a b c)
  (cond
    ((and (< a b) (< a c)) (+ b c))
    ((and (< b a) (< b c)) (+ a c))
    ((and (< c a) (< c b)) (+ a b))))
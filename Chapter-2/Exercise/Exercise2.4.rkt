#lang racket

(define (pair x y)
  (lambda (m) (m x y)))

(define (first z)
  (z (lambda (p q) p)))

(define (rest z)
  (z (lambda (p q) q)))
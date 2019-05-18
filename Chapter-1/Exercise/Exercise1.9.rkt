#lang racket

(define (inc x)
  (+ x 1))

(define (dec x)
  (- x 1))

(define (add a b)
  (if (= a 0)
      b
      (inc (add (dec a) b))))

(define (ADD a b)
  (if (= a 0)
      b
      (ADD (dec a) (inc b))))

; The first process is recursive. The second process is iterative.
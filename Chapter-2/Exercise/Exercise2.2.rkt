#lang racket

(define (make-segment p1 p2)
  (cons p1 p2))

(define (start-segment segment)
  (car segment))

(define (end-segment segment)
  (cdr segment))

(define (make-point x y)
  (cons x y))

(define (x-point point)
  (car point))

(define (y-point point)
  (cdr point))

(define (average x y)
  (/ (+ x y) 2))

(define (midpoint-segment segment)
  (define start (start-segment segment))
  (define end (end-segment segment))
  (define start-x (x-point start))
  (define start-y (y-point start))
  (define end-x (x-point end))
  (define end-y (y-point end))
 (make-point
   (average start-x end-x)
   (average start-y end-y)))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))
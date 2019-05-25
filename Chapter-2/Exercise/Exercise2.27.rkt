#lang racket

(define x
  (list (list 1 2) (list 3 4)))

(define (deep-reverse items)
  (define (iter items result)
    (cond
      ((null? items) result)
      ((not (pair? items)) items)
      (else (iter (cdr items)
                  (cons (iter (car items) '()) result)))))
  (iter items '()))
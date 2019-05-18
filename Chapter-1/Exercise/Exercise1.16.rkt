#lang racket

(define (square x)
  (* x x))

(define (fast-expt b n)
  (define (expt-iter b n base result)
    (cond
      ((= n 0) result)
      ((even? n)
       (expt-iter b (/ n 2) (square base) result))
      (else
       (expt-iter b (/ (- n 1) 2) (square base) (* result base)))))
  (expt-iter b n b 1))
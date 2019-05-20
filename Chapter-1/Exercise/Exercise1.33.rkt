#lang racket

;(define (filtered-accumulate combiner filter null-value term a next b)
;  (define (compute-filtered a)
;    (define t (term a))
;    (if (filter t)
;        (combiner
;         (filtered-accumulate combiner filter null-value term (next a) next b) (term a))
;        (filtered-accumulate combiner filter null-value term (next a) next b)))
;  (if (> a b)
;      null-value
;      (compute-filtered a)))

(define (filtered-accumulate combiner filter null-value term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (let ((t (term a)))
          (if (filter t)
              (iter (next a) (combiner t result))
              (iter (next a) result)))))
  (iter a null-value))
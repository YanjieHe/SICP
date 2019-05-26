#lang racket

(define x
  (cons (list 1 2) (list 3 4)))

(define (count-leaves x)
  (cond ((null? x) 0)
        ((not (pair? x)) 1)
        (else (+ (count-leaves (car x))
                 (count-leaves (cdr x))))))

(define nil '())

;(define (scale-tree tree factor)
;  (cond ((null? tree) nil)
;        ((not (pair? tree)) (* tree factor))
;        (else
;         (cons (scale-tree (car tree) factor)
;               (scale-tree (cdr tree) factor)))))


(define (scale-tree tree factor)
  (map (lambda (sub-tree)
         (if (pair? sub-tree)
             (scale-tree sub-tree factor)
             (* sub-tree factor)))
       tree))
  
(scale-tree (list 1 (list 2 (list 3 4) 5) (list 6 7))
            10)
#lang racket

(define x
  (list (list 1 2)
        (list 3 4)))

(define (append-lists lists)
  (cond
    ((null? lists) lists)
    ((null? (cdr lists)) (car lists))
    (else
     (append (car lists)
             (append-lists (cdr lists))))))

(define (fringe tree)
  (cond
    ((null? tree) tree)
    ((not (list? tree)) (list tree))
    (else
     (append-lists
      (map fringe tree)))))

(fringe x)
(fringe (list x x))
#lang racket

(define (f n)
  (define (f-iter a b c current n)
    (if (= current n)
        (+ c (* 2 b) (* 3 a))
        (f-iter b c (+ c (* 2 b) (* 3 a)) (+ current 1) n)))
  (if (< n 3)
      n
      (f-iter 0 1 2 3 n)))
        
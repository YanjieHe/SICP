#lang racket

(define (simpson f a b n)
  (define (simpson-iter f a b h prev sum)
    (if (> a b)
        (+ (f b) sum)
        (simpson-iter f (+ a h) b h (cond
                                      ((= prev 1) 4)
                                      ((= prev 4) 2)
                                      ((= prev 2) 4))
                      (+ (* prev (f a)) sum))))
  (define h (/ (- b a) n))
  (* (/ h 3 ) (simpson-iter f a b h 1 0)))
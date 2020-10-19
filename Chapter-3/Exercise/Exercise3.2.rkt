#lang racket

(define (make-monitored f)
  (let ((n 0))
    (lambda (arg)
      (if (eq? arg 'how-many-calls?)
        n
        (begin
          (set! n (+ n 1))
          (f arg))))))

(define s (make-monitored sqrt))

(s 100)
; 10

(s 'how-many-calls?)
; 1

(s 64)
; 8

(s 'how-many-calls?)
; 2
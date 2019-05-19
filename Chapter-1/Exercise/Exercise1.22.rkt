#lang racket

(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b)
  (= (remainder b a) 0))

(define (square x)
  (* x x))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (runtime)
  (current-milliseconds))

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime) start-time))
      #f))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

(define (search-for-primes number)
  (define (search-iter number count)
    (when (< count 3)
      (if (timed-prime-test number)
          (search-iter (+ number 1) (+ count 1))
          (search-iter (+ number 1) count))))
  (search-iter number 0))

(display "Find the three smallest primes larget than 1000: ")
(search-for-primes 1000)

(newline)
(newline)
(display "Find the three smallest primes larget than 10,000: ")
(search-for-primes 10000)


(newline)
(newline)
(display "Find the three smallest primes larget than 100,000: ")
(search-for-primes 100000)


(newline)
(newline)
(display "Find the three smallest primes larget than 1,000,000: ")
(search-for-primes 1000000)
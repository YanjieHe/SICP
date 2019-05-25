#lang racket

(define nil '())

(define (square-list items)
  (if (null? items)
      nil
      (cons 
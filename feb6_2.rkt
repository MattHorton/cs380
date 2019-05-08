#lang eopl

(define (odds lst)
  (cond ((null? lst)
         '())
        ((odd? (car lst))
         (cons (car lst)
               (odds (cdr lst))))
        (else
         (odds (cdr lst)))))


;; return a list of the odd elements
(define (odds-vec index vec)
  (cond ((>= index (vector-length vec))
         '())
        ((odd? (vector-ref vec index))
         (cons (vector-ref vec index)
               (odds-vec (+ 1 index) vec)))
        (else
         (odds-vec (+ 1 index) vec))))
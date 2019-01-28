#lang racket

(define square (lambda (x)
                 (* x x)))
;last part of function is return value of lambda function

(define (square2 x)
  (* x x))

(define product (lambda (x y)
                  (* x y)))

(define (letter-grade pct)
  (if (>= pct 90)
      'A
      (if (>= pct 80)
          'B
          (if (>= pct 70)
              'C
              (if (>= pct 60)
                  'D
                  'F)))))

(define (letter-grade2 pct)
  (cond ([>= pct 90] 'A)
        ([>= pct 80] 'B)
        ([>= pct 70] 'C)
        ([>= pct 60] 'D)
        (#t'F)))
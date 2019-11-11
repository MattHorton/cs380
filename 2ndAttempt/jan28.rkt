#lang eopl


;; datatype to represent lambda-calculus expressions

(define-datatype lc-exp lc-exp?
  [var-exp (var symbol?)] ;; this represents variable expressions
  [lambda-exp (bound-var symbol?)
              (body lc-exp?)]
  [apply-exp (func lc-exp?)
             (arg lc-exp?)])


;; occurs-free? search-var exp
(define (occurs-free? search-var exp)
  (cases lc-exp exp
    [var-exp (var)
             (equal? search-var var)]
    [lambda-exp (bound-var body)
                (if (equal? search-var bound-var)
                #t
                (occurs-free? search-var body))]
    [apply-exp (func arg)
               (or (occurs-free? search-var func)
                   (occurs-free? search-var arg))]))


(define test-expression (apply-exp (lambda-exp 'x (var-exp 'x))
                                   (var-exp 'a)))
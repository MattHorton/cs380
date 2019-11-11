#lang eopl

(define (prism-volume xs ys zs)
  (let ([base-area (* xs ys)])
    (* zs base-area)))

(define (quadratic a b c)
  (let* ([discriminant (sqrt (- (expt b 2)
                               (* 4 a c)))]
        [denominator (* 2 a)]
        [root1 (/ (+ (- b) discriminant)
                  denominator)]
        [root2 (/ (- (- b) discriminant)
                  denominator)])
    (list root1 root2)))


;;subst
(define (subst-in-slist oldSym newSym lst)
  (cond [(null? lst) '()]
        [else (cons (subst-in-sexp oldSym newSym (car lst))
                    (subst-in-slist oldSym newSym (cdr lst)))]))
(define (subst-in-sexp oldSym newSym sexp)
  (cond [(list? sexp) (subst-in-slist oldSym newSym sexp)]
        [(equal? oldSym sexp) newSym]
        [else sexp]))

;;occurs free ?
(define (occurs-free? sym lexp)
  (cond [(symbol? lexp)
         (equal? sym lexp)]
        [(equal? 'lambda (car lexp)) ;;is the car a lambda?
         (occurs-free-in-lambda sym lexp)];;is the car of the cdr the symbol we are looking for?
        [else (or (occurs-free? sym (car lexp)))
              (occurs-free? sym (cadr lexp))]))
(define (occurs-free-in-lambda sym lexp)
  (let ([argument (caadr lexp)];;argument of the lambda expression
        [body (cddr lexp)]);;body of the lambda expression
    (if (equal? sym argument);;if the argument is equal it is bound
        #f)
    (else (occurs-free? sym body))));; otherwise recurse on the body of the lambda
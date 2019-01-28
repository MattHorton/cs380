#lang eopl
;; in-S? : int -> boolean
;; Returns true if the argument is in the set S
; question marks are used to designate a predicate
(define in-S? (lambda (n)
                (if (negative? n)
                    #f
                    (if (zero? n)
                        #t
                        (in-S? (- n 3))))))

(define in-S2? (lambda(n)
                (cond ((negative? n)#f)
                      ((zero? n)#t)
                      ((in-S? (- n 3))))))

;; my-length : list -> integer
;; returns the number of elements in the list
(define (my-length lst)
  (if (null? lst)
      0
      (+ 1 (my-length (cdr lst)))))

;; nth-element : integer x listOf(T) -> T
;; returns nth element of the list
(define (nth-element n lst)
  (cond ((null? lst)(eopl:error "No element"))
        ((zero? n) (car lst))
        (#t (nth-element (- n 1) (cdr lst)))))

;; remove-first : Symbol x listOf(Symbol) -> listOf(Symbol)
;; return a copy of a list with the first occurence of symbol removed
(define remove-first (lambda(sym lst)
                       (cond ((null? lst) '())
                             ((equal? sym (car lst)) (cdr lst))
                             (#t (cons (car lst)(remove-first sym (cdr lst)))))))
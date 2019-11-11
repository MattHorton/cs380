#lang eopl

(define-datatype proc proc?
  (procedure (arg symbol?)
             (body expression?)
             (saved-env environment?)))
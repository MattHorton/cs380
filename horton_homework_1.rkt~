#lang eopl

(provide(all-defined-out))

(define pi (* 4 (atan 1.0)))
; 1. write a function called (degrees->radians d) that converts the unit of angles from degrees to radians.
;    180 degrees is pi radians. pi should be defined in the file by the above
(define (degrees->radians d)
  (/ (* d pi) 180))


; 2. write a function (distance v t) that calculates a disance of moving at a constant velocity, v in t seconds
(define (distance v t)
  (* v t))

; 3. write a function (time-to-ground vy) that calculates a duration until the object reaches the ground that is launched
;    with vertical velocity of vy. Ignore air drag and use 9.8m/s^-2 as a value of acceleration of gravity
(define (time-to-ground vy)
  (* 2 (/ vy 9.8)))

; 4. write a function (ball-distance v theta) that calculates a flying distance of a ball thrown with an initial velocity v
(define (ball-distance v theta)
  (distance (* v (cos (theta1 theta))) (time-to-ground (* v (sin (theta1 theta))))))

(define (theta1 d)
  (degrees->radians d))
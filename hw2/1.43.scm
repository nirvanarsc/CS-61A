(load "1.42.scm")

(define (identity x) x)

(define (repeated f n)
  (cond ((= n 0) identity)
        ((even? n) (repeated (compose f f) (/ n 2)))
        (else (compose f (repeated f (- n 1))))))

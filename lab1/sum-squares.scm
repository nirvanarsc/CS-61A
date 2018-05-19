(define (square x) (* x x))

(define (sum-squares x y z)
  (cond ((and (< x y) (< x z)) (+ (square y) (square z)))
        ((< y z) (+ (square x) (square z)))
        (else (+ (square x) (square y)))))

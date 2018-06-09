(define (check-and x)
  (and (= x (+ x 1)) (check-and x)))

; we don't run into a stack overflow exception therefore and is a special form

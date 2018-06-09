(define (check-or x)
  (or (= x x) (check-or x)))

; we don't run into a stack overflow exception therefore or is a special form

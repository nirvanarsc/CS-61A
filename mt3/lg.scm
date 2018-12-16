(define (reclg n)
  (if (= n 1)
    0
    (1+ (reclg (floor (/ n 2))))))

(define (iterlg n)
  (helper-iter n 0))

(define (helper-iter n result)
  (if (= n 1)
    result
    (helper-iter (floor (/ n 2)) (1+ result))))

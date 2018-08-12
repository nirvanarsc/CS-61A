(define (next-perf n)
  (if (= (sum-of-factors n) n)
    n
    (next-perf (+ n 1))))

(define (sum-of-factors n)
  (define (check-fact k)
    (if (= k n)
      0
      (if (= (modulo n k) 0)
        (+ k (check-fact (+ k 1)))
        (+ 0 (check-fact (+ k 1)))
        )
      )
    )
  (check-fact 1)
  )

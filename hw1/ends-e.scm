(define (ends-e s)
  (if (empty? s) '()
    (ends-e-helper (first s) (bf s))))

(define (ends-e-helper prev s)
  (if (empty? s) '()
    (if (equal? (last prev) 'e)
      (se prev (ends-e-helper (first s) (bf s)))
      (ends-e-helper (first s) (bf s)))))

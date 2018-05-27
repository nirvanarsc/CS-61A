(define (ordered? s)
  (if (empty? s)
    #t
    (ordered?-helper (first s) (bf s))))

(define (ordered?-helper prev s)
  (if (empty? s)
    #t
    (if (>= (first s) prev)
      (ordered?-helper (first s) (bf s))
      #f)))

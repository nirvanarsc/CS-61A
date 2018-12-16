(define (pairmap fun sent)
  (if (empty? (bf sent))
    '()
    (se (fun (first sent) (first (bf sent)))
        (pairmap fun (bf sent)))))

(define (differences sent)
  (pairmap - sent))

(define (wordpairs sent)
  (pairmap word sent))


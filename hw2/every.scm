(define (every f sentence)
  (if (empty? sentence) '()
    (se (f (first sentence)) (every f (bf sentence)))))

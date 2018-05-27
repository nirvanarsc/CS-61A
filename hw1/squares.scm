(define (squares sentence)
  (if (empty? sentence)
    '()
    (se (square (first sentence)) (squares (butfirst sentence)))))

(define (square x) (* x x))

(define (in-order? pred sent)
  (cond ((= (count sent) 1) #t)
        ((pred (first sent) (first (bf sent)))
         (in-order? pred (bf sent)))
        (else #f)))

(define (shorter? a b)
  (< (count a) (count b)))

(define (order-checker pred)
  (lambda (sent) (in-order? pred sent)))

(define (colors sockdrawer)
  (define (remdup seq)
    (cond ((null? seq) '())
          ((memq (car seq) (cdr seq)) (remdup (cdr seq)))
          (else (cons (car seq) (remdup (cdr seq)))) ))
  (remdup sockdrawer) )

(define (howmany color sockdrawer)
  (length (filter (lambda (sock) (eq? sock color)) sockdrawer)) )

(define (odd-sock? sockdrawer)
  (let ([set (colors sockdrawer)])
    (define (check-set set)
      (if (null? set) #f
        (if (odd? (howmany (first set) sockdrawer))
          #t
          (check-set (bf set)))))
    (check-set set)))

(define (colors-new drawer)
  (map car drawer))

(define (howmany-new color drawer)
  (cadr (assoc color drawer)))

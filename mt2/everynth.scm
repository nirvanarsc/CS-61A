(define (every-nth n sent)
  (helper n sent 1))

(define (helper n sent pos)
  (cond ((empty? sent) '())
        ((= (remainder pos n) 0)
         (se (first sent) (helper n (bf sent) (1+ pos))) )
        (else (helper n (bf sent) (1+ pos))) ))


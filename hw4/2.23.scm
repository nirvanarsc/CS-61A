(define (fe func items)
  (cond
    ((null? items) #t)
    (else (func (car items))
          (fe func (cdr items)))))

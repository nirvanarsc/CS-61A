(define (type-check f arg check)
  if (check f arg) #t
  else #f
  )

(define (check f arg)
  (if (f arg) ZZ

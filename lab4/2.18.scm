(define (rev x)
  (if (null? x) 
    '()
    (append 
      (rev (cdr x))
      (list (car x)))))

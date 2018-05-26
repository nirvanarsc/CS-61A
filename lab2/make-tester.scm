(define (ch word) 
  (lambda (x) 
    (if (equal? word x) #t #f))) 

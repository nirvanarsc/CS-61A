(define (substitute lst old new)
    (map (lambda (x)
           (if (list? x)
             (substitute x old new)     
             (if (equal? x old) new x))) lst))

(define (findIndex lst x)
  (define (iterFind lst x res)
    (if (null? lst)
      -1
      (if (equal? (car lst) x)
        res
        (iterFind (cdr lst) x (+ res 1)))))
  (iterFind lst x 0))

(define (substitute2 lst old new)
  (substitute2-helper lst old new))

(define (substitute2-helper lst old new)
  (if (equal? old nil)
    lst
    (let ((old-word (car old))
          (new-word (car new))
          (next-old (cdr old))
          (next-new (cdr new)))
      (substitute2-helper (substitute lst old-word new-word)
                          next-old 
                          next-new))))

(define (square-list items)
  (define (iter things answer)
    (if (null? things)
      answer
      (iter (cdr things)
            (append answer (list (square (car things)))))))
  (iter items nil))

(define (square x) (* x x))

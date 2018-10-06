(define (square-list1 items)
  (if (null? items)
    nil
    (cons (* (car items) (car items)) (square-list1 (cdr items)))))

(define (square-list2 items)
  (map (lambda (x) (* x x)) items))

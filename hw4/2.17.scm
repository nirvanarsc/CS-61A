(define (last-pair1 lst)
  (if (= 1 (length lst))
    (list (car lst))
    (last-pair1 (cdr lst))))

;; without using length

 (define (last-pair2 lst) 
   (cond ((null? lst) lst) 
         ((null? (cdr lst)) (list (car lst))) 
         (else (last-pair2 (cdr lst))))) 

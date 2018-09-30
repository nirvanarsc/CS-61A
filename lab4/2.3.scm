(define (make-rect a b)
  (cons a b))

(define (rect-perim rect)
  (+ 
    (* (car rect) 2)
    (* (cdr rect) 2)))

(define (rect-area rect)
  (*
    (car rect)
    (cdr rect)))

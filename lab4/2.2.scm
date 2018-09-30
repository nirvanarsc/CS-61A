(define (make-segment x y)
  (cons x y))

(define (start-segment x)
  (car x))

(define (end-segment y)
  (cdr y))

(define (make-point x y)
  (cons x y))

(define (x-point x)
  (car x))

(define (y-point y)
  (cdr y))

(define (print-point p)
  (display "(")
  (display (x-point p))
  (display ", ")
  (display (y-point p))
  (display ")")
  (newline))

(define (midpoint-segment segment)
  (define (avg a b) (/ (+ a b) 2))
  (make-point (avg
                (x-point (end-segment segment))
                (x-point (start-segment segment)))
              (avg
                (y-point (end-segment segment))
                (y-point (start-segment segment)))))

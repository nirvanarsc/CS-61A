;textbook solution - only check whether argument is a number
;ex. 4
(define (type-check1 f g arg)
  (if (g arg) (f arg) #f))

;ex. 5
(define (make-safe1 f g)
  (lambda (x)
    (if (g x) (f x) #f)))

;solution that checks if an error is thrown
;ex. 4
(define (type-check2 f arg)
  (if (not(check f arg)) (f arg) "Invalid argument"))

(define (check f arg)
  (catch (f arg)))

;ex. 5
(define (make-safe2 f)
  (lambda (x)
    (if (not(check f x)) (f x) "Invalid argument")))

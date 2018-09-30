 (define (make-interval a b) (cons a b)) 
 (define (upper-bound interval) (max (car interval) (cdr interval))) 
 (define (lower-bound interval) (min (car interval) (cdr interval))) 
 (define (center i) (/ (+ (upper-bound i) (lower-bound i)) 2)) 
  
 ;; Percent is between 0 and 100.0 
 (define (make-interval-center-percent c pct) 
      (let ((width (* c (/ pct 100.0)))) 
             (make-interval (- c width) (+ c width)))) 
  
 (define (percent-tolerance i) 
      (let (
            (center (/ (+ (upper-bound i) (lower-bound i)) 2.0)) 
            (width (/ (- (upper-bound i) (lower-bound i)) 2.0))
            )
        (* (/ width center) 100)))

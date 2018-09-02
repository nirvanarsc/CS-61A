;; ex 2.10 
(define (make-interval a b) (cons a b)) 
(define (upper-bound interval) (max (car interval) (cdr interval)))
(define (lower-bound interval) (min (car interval) (cdr interval))) 
  
(define (mul-interval x y) 
      (let ((p1 (* (lower-bound x) (lower-bound y))) 
            (p2 (* (lower-bound x) (upper-bound y))) 
            (p3 (* (upper-bound x) (lower-bound y))) 
            (p4 (* (upper-bound x) (upper-bound y)))) 
        (make-interval (min p1 p2 p3 p4) 
                       (max p1 p2 p3 p4)))) 
  
(define (div-interval x y) 
      (mul-interval x  
                    (make-interval (/ 1. (upper-bound y)) 
                                   (/ 1. (lower-bound y))))) 
  
(define (print-interval name i) 
      (newline) 
      (display name) 
      (display ": [") 
      (display (lower-bound i)) 
      (display ",") 
      (display (upper-bound i)) 
      (display "]")) 
  
;; Usage 
(define i (make-interval 2 7)) 
(define j (make-interval 8 3)) 
  
(print-interval "i" i) 
(print-interval "j" j) 
(print-interval "i*j" (mul-interval i j)) 
(print-interval "j*i" (mul-interval j i)) 
(print-interval "i/j" (div-interval i j)) 
(print-interval "j/i" (div-interval j i)) 
  
;; Gives: 
;; i: [2,7] 
;; j: [3,8] 
;; i*j: [6,56] 
;; j*i: [6,56] 
;; i/j: [.25,2.333333333333333] 
;; j/i: [.42857142857142855,4.] 
  
;; New definition: Division by interval spanning 0 should fail. 
(define (div-interval-zero x y) 
      (if (<= (* (lower-bound y) (upper-bound y)) 0) 
          (error "Division error (interval spans 0)" y) 
          (mul-interval x  
                        (make-interval (/ 1. (upper-bound y))
                                       (/ 1. (lower-bound y))))))

(define span-0 (make-interval -1 1)) 
;; (print-interval "i/j" (div-interval i j)) => i/j: [.25,2.333333333333333] 
;; (print-interval "i/span-0" (div-interval-zero i span-0)) => Division error (interval spans 0) (-1 . 1) 
